//
//  LibraryView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1...10, id: \.self) { count in
                    LibraryBookView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
