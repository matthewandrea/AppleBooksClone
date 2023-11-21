//
//  BooksApp.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    
    @State private var selectedTab = 2
    
    var body: some Scene {
        WindowGroup {
            
            TabView(selection: $selectedTab) {
                ReadNowView()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Read Now")
                    }
                    .tag(0)
                
                LibraryView()
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Library")
                    }
                    .tag(1)
                
                BookStoreView()
                    .tabItem {
                        Image(systemName: "bag.fill")
                        Text("Book Store")
                    }
                    .tag(2)
                AudiobooksView()
                    .tabItem {
                        Image(systemName: "headphones")
                        Text("Audiobooks")
                    }
                    .tag(3)
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .tag(4)
            }
            
        }
    }
    
}
