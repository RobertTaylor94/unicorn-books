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
        case library, tracker, search
    }
    
    @State private var selectedTab: Tab = .library
    
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
                TrackerView()
                    .navigationTitle("Tracker")
            }
            .tabItem{
                Label("Tracker", systemImage: "timer")
            }.tag(Tab.tracker)
            NavigationStack {
                SearchView()
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
        .modelContainer(for: Item.self, inMemory: true)
}
