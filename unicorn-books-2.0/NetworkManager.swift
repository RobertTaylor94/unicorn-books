//
//  NetworkManager.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 08/02/2024.
//

import Foundation

class NetworkManager: ObservableObject {
    
    
    @Published var results = [BookItem]()
    
    let apiUrl = "https://www.googleapis.com/books/v1/volumes?q="

    
    @MainActor func getBookResults(searchText: String) async throws {
        guard let url = URL(string: "\(apiUrl)\(searchText.replacingOccurrences(of: " ", with: "+"))&maxResults=10&key=\(apiKey)") else { throw nmError.invalidUrl }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw nmError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let resultsList = try decoder.decode(Results.self, from: data)
            for item in resultsList.items {
                let bookItem = BookItem(id: item.id, volumeInfo: VolumeInfo(title: item.volumeInfo.title, authors: item.volumeInfo.authors, publishedDate: item.volumeInfo.publishedDate, pageCount: item.volumeInfo.pageCount, imageLinks: item.volumeInfo.imageLinks))
                results.append(bookItem)
            }
        } catch {
            throw nmError.invalidData
        }
    }
}

enum nmError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}

// MARK: - BookList
struct Results: Codable {
    let items: [BookItem]
}

// MARK: - BookItem
struct BookItem: Codable {
    let id: String
    let volumeInfo: VolumeInfo
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
    let authors: [String]
    let publishedDate: String
    let pageCount: Int?
    let imageLinks: ImageLinks
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail: String
    let thumbnail: String
}
