//
//  BooksApp.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    
   // @Environment(\.colorScheme) var colorScheme
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                ReadNowView()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Read Now")
                    }
                LibraryView()
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Library")
                    }
                BookStoreView()
                    .tabItem {
                        Image(systemName: "bag.fill")
                        Text("Book Store")
                    }
                AudiobooksView()
                    .tabItem {
                        Image(systemName: "headphones")
                        Text("Audiobooks")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
            }
           // .accentColor(colorScheme == .dark ? Color.white : Color.black)
            
        }
    }
    
}
