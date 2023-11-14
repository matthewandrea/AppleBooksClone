//
//  BookStoreView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BookStoreView: View {
    
    var viewModel = BookViewModel()
    
    var body: some View {
        
        NavigationStack {
            
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
                }
            } .padding(.horizontal)
                .padding(.vertical, 5)
            
            Divider()
                .frame(width: 360)
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 16) {
                    ForEach(viewModel.books) { book in
                        NavigationLink(destination: BookDetailView(book: book)) {
                            Image(book.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 200)
                                .padding()
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            Spacer()
            .navigationTitle("Book Store")
        }
        
    }
}

#Preview {
    BookStoreView()
}
