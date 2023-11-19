//
//  SearchView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct SearchView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 34)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 19)!]
    }
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var searchText = ""
    @State private var selectedBook: Book?
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(filteredBooks, id: \.id) { book in
                    Button(action: {
                        selectedBook = book
                    }) {
                        HStack {
                            Image(book.cover)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                            
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                
                                Text(book.author)
                                    .font(.subheadline)
                            }
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                            HStack {
                                Button("GET", action: {
                                    // No action
                                })
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(colorScheme == .dark ? Color.white.opacity(0.2) : Color.gray.opacity(0.1))
                                .cornerRadius(40)
                            }
                            .padding(.leading, 5)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Search")
        }
        .searchable(text: $searchText, prompt: "Books & Audiobooks")
        .sheet(item: $selectedBook) { book in
            BookDetailView(book: book)
        }
    }
    
    var filteredBooks: [Book] {
        if searchText.isEmpty {
            return []
        } else {
            return BooksViewModel.books1.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
            + BooksViewModel.books2.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
        }
    }
}


#Preview {
    SearchView()
}
