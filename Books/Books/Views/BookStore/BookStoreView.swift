//
//  BookStoreView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BookStoreView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 34)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 19)!]
    }
    
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedBook: Book?
    
    var bookVM = BooksViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    Divider()
                        .frame(width: 360)
                    
                    NavigationLink(destination: BrowseSectionsView()) {
                        HStack {
                            Image(systemName: "text.justifyleft")
                                .imageScale(.large)
                            Text("Browse Sections")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())]) {
                        ForEach(BooksViewModel.books3) { book in
                            Button(action: {
                                selectedBook = book
                            }) {
                                NewBooksView(book3: book)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 30)
                }
                .background(
                    colorScheme == .light ?
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.white,
                            Color.gray.opacity(0.4)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    ) :
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.clear,
                                Color.clear
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                )
                
                VStack {
                    VStack (alignment: .leading) {
                        Text ("New & Trending")
                            .font(Font.custom("Georgia-Bold", size: 22))
                        
                        Text ("Recently released and buzz-y books.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                            ForEach(BooksViewModel.books1) { book in
                                Button(action: {
                                    selectedBook = book
                                }) {
                                    Image(book.cover)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 100)
                                        .padding(.leading, 15)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .frame(maxHeight: 110)
                        
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 3) {
                            ForEach(BooksViewModel.books2) { book in
                                Button(action: {
                                    selectedBook = book
                                }) {
                                    Image(book.cover)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 100)
                                        .padding(.leading, 15)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .frame(maxHeight: 110)
                        
                    }
                    .padding(.bottom)
                    
                    VStack {
                        Divider()
                            .frame(width: 360)
                        
                        Button {
                            // No action
                        } label: {
                            HStack {
                                Text("See All")
                                
                                Image(systemName: "chevron.forward")
                                    .imageScale(.small)
                                    .foregroundColor(.gray)
                                
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 30)
                    }
                }
                .background(
                    LinearGradient(gradient: Gradient(colors: [
                        colorScheme == .light ? Color.white : Color.gray.opacity(0.4),
                        colorScheme == .light ? Color.gray.opacity(0.4) : Color.black
                    ]), startPoint: .top, endPoint: .bottom)
                )
                
                .navigationTitle("Book Store")
            }
        }
        .sheet(item: $selectedBook) { selectedBook in
            BookDetailView(book: selectedBook)
        }
    }
}

struct BookStoreView_Previews: PreviewProvider {
    static var previews: some View {
        BookStoreView()
    }
}
