//
//  SectionsDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 15/11/23.
//

import SwiftUI

struct SectionsDetailView: View {
    
    init(category: String) {
        self.category = category
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 34)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 19)!]
    }
    
    @State private var selectedBook: Book?
    
    var category: String
    
    var body: some View {
        
        ScrollView {
            Divider()
                .frame(width: 360)
            
            VStack (alignment: .leading) {
                Text ("New Releases")
                    .font(Font.custom("Georgia-Bold", size: 22))
                    .padding(.top, 30)
                    .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                    ForEach(BooksViewModel.books2) { book in
                        Button(action: {
                            selectedBook = book
                        }) {
                            Image(book.cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 320)
                                .padding(.leading)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(maxHeight: 320)
                
            }
            .padding(.bottom, 20)
            
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
            
            VStack {
                VStack (alignment: .leading) {
                    Text ("Have You Read...?")
                        .font(Font.custom("Georgia-Bold", size: 22))
                        .foregroundColor(Color.white)
                        .padding(.top, 30)
                        .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                        ForEach(BooksViewModel.books1) { book in
                            Button(action: {
                                selectedBook = book
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 220)
                                    .padding(.leading)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 220)
                    
                }
                .padding(.bottom, 20)
                
                VStack {
                    Button {
                        // No action
                    } label: {
                        HStack {
                            Text("See All")
                                .foregroundColor(.white)
                            
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
            .background(LinearGradient(gradient: Gradient(colors: [Color("MyColor"), Color("MyColor").opacity(0.6)]), startPoint: .top, endPoint: .bottom))
            
            .navigationTitle(category)
            Spacer()
        }
        .sheet(item: $selectedBook) { selectedBook in
            BookDetailView(book: selectedBook)
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
