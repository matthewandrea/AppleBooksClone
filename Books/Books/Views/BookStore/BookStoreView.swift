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
                                .foregroundColor(.gray)
                            
                            Text("Browse Sections")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                        }
                        .accessibilityElement(children: .combine)
                        .accessibilityLabel("Browse Sections")
                        .accessibilityHint("Double tap to explore the browse sections")
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
                    .padding(.horizontal, 15)
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
                            .font(Font.custom("Georgia-Bold", size: 21))
                            .accessibilityLabel("New & Trending section")
                        
                        Text ("Recently released and buzz-y books.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                            .accessibilityLabel("These are the Recently released and buzz-y books")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 1) {
                            ForEach(BooksViewModel.books1) { book in
                                Button(action: {
                                    selectedBook = book
                                }) {
                                    Image(book.cover)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 100)
                                        .cornerRadius(3)
                                        .padding(.horizontal, 15)
                                        .accessibilityLabel("Cover of \(book.title)")
                                        .accessibilityHint("Double tap to see the details or read the book or swipe horizontally with three fingers to explore more books")
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .frame(maxHeight: 110)
                        .padding(.bottom, 5)
                        
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 0) {
                            ForEach(BooksViewModel.books2) { book in
                                Button(action: {
                                    selectedBook = book
                                }) {
                                    Image(book.cover)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 100)
                                        .cornerRadius(3)
                                        .padding(.horizontal, 15)
                                        .accessibilityLabel("Cover of \(book.title)")
                                        .accessibilityHint("Double tap to see the details or read the book or swipe horizontally with three fingers to explore more books")
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
                                    .font(.subheadline)
                                
                                Image(systemName: "chevron.forward")
                                    .imageScale(.small)
                                    .foregroundColor(.gray)
                                
                                Spacer()
                            }
                            .accessibilityElement(children: .combine)
                            .accessibilityLabel("See All")
                            .accessibilityHint("Double tap to see all books")
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                        .padding(.bottom, 40)
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
