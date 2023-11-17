//
//  BookDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @Environment(\.colorScheme) var colorScheme
    var book: Book
    
    var body: some View {
        
        VStack {
            Image("\(book.cover)")
                .resizable()
                .scaledToFit()
                .frame(height: 320)
                .padding(.leading)
                .padding(.bottom)
            
            Text("\(book.title)")
                .font(.title2)
                .bold()
            
            Button {
                // No action
            } label: {
                HStack {
                    Text("\(book.author)")
                    
                    Image(systemName: "chevron.forward")
                        .imageScale(.small)
                }
            }
            
            HStack {
                VStack (alignment: .leading) {
                    HStack (spacing: 2) {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                    }
                    
                    .padding(.bottom, 2)
                    Text("698 Ratings")
                        .font(.subheadline)
                }
                
                Spacer()
                
                HStack (spacing: 15) {
                    Button(action: {
                        // No action
                    }) {
                        Image(systemName: "app.gift.fill")
                            .font(.system(size: 35))
                    }
                    
                    Button(action: {
                        // No action
                    }) {
                        Image(systemName: "ellipsis.circle.fill")
                            .font(.system(size: 35))
                    }
                }
                
            }
            .padding()
            
            Button(action: {
                // No action
            }) {
                Text("GET")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(colorScheme == .dark ? Color.gray : Color.black)
                    .cornerRadius(40)
            }
            .padding(.horizontal)
            
            HStack {
                Button(action: {
                    // No action
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .padding(.leading)
                        
                        Text("WANT TO READ")
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .padding(.trailing)
                    }
                    .frame(maxWidth: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(colorScheme == .dark ? Color.gray : Color.black, lineWidth: 1)
                    )
                }
                
                Button(action: {
                    // No action
                }) {
                    HStack {
                        Image(systemName: "book.pages.fill")
                            .padding(.leading)
                        
                        Text("SAMPLE")
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .padding(.trailing)
                    }
                    .frame(maxWidth: 150)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(colorScheme == .dark ? Color.gray : Color.black, lineWidth: 1)
                    )
                }
            }
            .padding(.top, 5)
            .padding(.horizontal)
            
        }
        .padding(.bottom, 30)
        
        Divider()
            .frame(width: 360)
        
    }
}

#Preview {
    BookDetailView(book:
                    Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito")
    )
}

