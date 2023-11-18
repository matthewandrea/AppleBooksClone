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
            UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
        }
    
    @State private var selectedBook: Book?
        
    var body: some View {
        
        NavigationStack {
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
                
                Divider()
                    .frame(width: 360)
            }
            
            VStack (alignment: .leading) {
                Text ("New & Trending")
                    .font(Font.custom("Georgia-Bold", size: 22))
                
                Text ("Recently released and buzz-y books.")
                    .font(.subheadline)
                    .padding(.bottom)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                    ForEach(BookViewModel.books1) { book in
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
                    ForEach(BookViewModel.books2) { book in
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
            
            .navigationTitle("Book Store")
            Spacer()
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
