//
//  SearchItemView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 07/02/2024.
//

import SwiftUI

struct SearchItemView: View {
    
    var bookTitle: String = "The Velvet Rage"
    var bookAuthor: String = "Alan Downs"
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "")) { image in
                image.resizable()
            }
            placeholder: {
                ProgressView()
            }
                .frame(width: 100, height: 160)
            VStack(alignment: .leading, spacing: 10) {
                Text(bookTitle)
                Text(bookAuthor)
            }
        }
        .padding(10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SearchItemView()
}
