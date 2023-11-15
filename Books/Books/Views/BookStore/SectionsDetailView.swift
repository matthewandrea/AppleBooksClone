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

        ScrollView {
            Divider()
                .frame(width: 360)
            
            VStack (alignment: .leading) {
                Text ("Bestsellers")
                    .font(.title2)
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
                                .frame(height: 320)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(maxHeight: 320)
                
            }
            .padding(.bottom, 20)
            .padding(.leading)
            
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
                .padding(.top)
                .padding(.bottom, 30)
            }
            
            VStack {
                VStack (alignment: .leading) {
                    Text ("Have You Read...?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                        .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 30) {
                        ForEach(viewModel.books1) { book in
                            NavigationLink(destination: BookDetailView(book: book)) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 320)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 320)
                    
                }
                .padding(.bottom, 20)
                .padding(.leading)
                
                VStack {
                    NavigationLink(destination: HaveYouReadView()) {
                        HStack {
                            Text("See All")
                            
                            Image(systemName: "chevron.forward")
                                .imageScale(.small)
                            
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    .padding(.bottom, 40)
                }
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.blue.opacity(0.4)]), startPoint: .top, endPoint: .bottom))

            .navigationTitle(category)
            Spacer()
        }
        
    }
}

struct SectionsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SectionsDetailView(category: "Top Charts")
        }
    }
}
