//
//  LibraryBookView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import SwiftUI

struct LibraryBookView: View {
    
    var body: some View {
        VStack {
            BookCoverView()
            BookProgressView(progress: 0.6, label: "60%")
        }
    }
}

struct BookCoverView: View {
    
    var bookTitle: String = "They Both Die at the End"
    var bookAuthor: String = "Adam Silvera"
    
    var body: some View {
        VStack {
            Text(bookTitle)
            Text(bookAuthor)
            AsyncImage(url: URL(string: "https://example.com/icon.png")) { image in
                image.resizable()
            }
            placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 320)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LibraryBookView()
}
