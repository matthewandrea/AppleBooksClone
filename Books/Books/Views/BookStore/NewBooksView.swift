//
//  NewBooksView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 19/11/23.
//

import SwiftUI

struct NewBooksView: View {
    
    var book1: Book
    
    var body: some View {
        
        ZStack {
            VStack (alignment: .leading) {
                Divider()
                    .padding(.top, 5)
                
                VStack (alignment: .leading) {
                    Text("NEW")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(book1.title)
                        .font(Font.custom("Georgia-Bold", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(book1.author)
                        .font(Font.custom("Georgia-Normal", size: 20))
                        .foregroundColor(.gray)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.top, 30)
                
                VStack {
                    Rectangle()
                        .fill(Color("MyColor").opacity(0.8))
                        .cornerRadius(20)
                        .overlay(
                            Image(book1.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        )
                        .frame(width: 360, height: 230)
                }
            }
        }
    }
}


#Preview {
    let book1 = Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito")
    return NewBooksView(book1: book1)
}
