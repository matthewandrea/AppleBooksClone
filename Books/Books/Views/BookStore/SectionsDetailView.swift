//
//  SectionsDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 15/11/23.
//

import SwiftUI

struct SectionsDetailView: View {
    
    var category: String
    var viewModel = BookViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            Divider()
                .frame(width: 360)
            
            VStack (alignment: .leading) {
                Text ("Bestsellers")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.top, 30)
                    .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 30) {
                    ForEach(viewModel.books2) { book in
                        NavigationLink(destination: BookDetailView(book: book)) {
                            Image(book.cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 340)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(maxHeight: 340)
                
            }
            .padding(.bottom, 20)
            .padding(.horizontal)
            
            VStack {
                Divider()
                    .frame(width: 360)
                
                NavigationLink(destination: BestsellersView()) {
                    HStack {
                        Text("See All")
                        
                        Image(systemName: "chevron.forward")
                            .imageScale(.small)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 5)
                
            }
            
            .navigationTitle(category)
            Spacer()
        }
        
    }
}

#Preview {
    SectionsDetailView(category: "Top Charts")
}
