//
//  SearchView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            TextField("search", text: $searchText, onEditingChanged: { isEditing in
//                self.showCancelButton = true
            }, onCommit: {
//                self.fetcher.getJsonData(string: searchText)
            })
            .foregroundColor(.primary)
            .accessibilityIdentifier("Search Text Field")
        
//          'x' button appears in search bar when text is entered and will clear all text on click
            Button(action: {
                searchText = ""
            }) {
                Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
            }
        }
        .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10.0)
        .padding(20)
        
        List {
        }
    }
}

#Preview {
    SearchView(searchText: "")
}
