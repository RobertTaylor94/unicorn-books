//
//  FriendsView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 07/02/2024.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        Text("Hello, Friends!")
            .toolbar {
                Button("Add Friend", systemImage: "plus.circle.fill") {
                    print("add friend")
                }
            }
        // Add friends button
        // Show your username
        // Show list of friends and their reading stats
        // ?Show what book they are reading
        // ?Show how far through current book
        
        // Book Club feature to create a group of friends
        // Share notes on current book
        // Send notif when everyone has finished
    }
}

#Preview {
    FriendsView()
}
