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
    
    var filteredBooks: [Book] {
        if searchText.isEmpty {
            return []
        } else {
            return BooksViewModel.books1.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
            + BooksViewModel.books2.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
            + BooksViewModel.books3.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
            + BooksViewModel.books4.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
            + BooksViewModel.books5.filter { $0.title.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
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
                                    .accessibility(label: Text("Cover of \(book.title) by \(book.author)"))

                                VStack(alignment: .leading) {
                                    Text(book.title)
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .accessibility(label: Text("Title: \(book.title)"))

                                    Text(book.author)
                                        .font(.subheadline)
                                        .accessibility(label: Text("Author: \(book.author)"))
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
                                    .accessibility(label: Text("Get this book"))

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
    
}

#Preview {
    SearchView()
}
