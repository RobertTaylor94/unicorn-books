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
            BookCoverView(title: "They Both Die at the End")
            BookProgressView(progress: 0.6, label: "60%")
        }
    }
}

struct BookCoverView: View {
    
    var title: String
    
    var body: some View {
        
        VStack {
            Text(title)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LibraryBookView()
}
