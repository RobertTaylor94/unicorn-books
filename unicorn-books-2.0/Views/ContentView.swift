//
//  ContentView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    enum Tab {
        case library, stats, friends, search
    }
    
    @State private var selectedTab: Tab = .library
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        TabView() {
            NavigationStack {
                LibraryView()
                    .navigationTitle("Library")
            }
            .tabItem{
                Label("Library", systemImage: "books.vertical.circle")
            }.tag(Tab.library)
            NavigationStack {
                StatsView()
                    .navigationTitle("Stats")
            }
            .tabItem{
                Label("Stats", systemImage: "chart.pie")
            }.tag(Tab.stats)
            NavigationStack {
                FriendsView()
                    .navigationTitle("Friends")
            }
            .tabItem{
                Label("Friends", systemImage: "person.2.circle")
            }.tag(Tab.friends)
            NavigationStack {
                SearchView(networkmanager: networkManager)
                    .navigationTitle("Search")
            }
            .tabItem{
                Label("Search", systemImage: "magnifyingglass.circle")
            }.tag(Tab.search)
        }
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: Book.self, inMemory: true)
}
