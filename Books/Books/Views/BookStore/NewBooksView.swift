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
            VStack {
                Divider()
                    .frame(width: 360)
                
                VStack (alignment: .leading) {
                    Text("NEW")
                        .font(.caption2)
                        .fontWeight(.bold)
                    
                    Text(book1.title)
                        .font(Font.custom("Georgia-Bold", size: 22))
                    
                    Text(book1.author)
                        .font(Font.custom("Georgia-Normal", size: 20))
                        .foregroundColor(.gray)
                        .padding(.bottom)
                }
                .padding(.top, 30)
                
                VStack {
                    Image(book1.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 220)
                        .padding(.leading)
                }
            }
        }
        
    }
}


#Preview {
    let book1 = Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito")
    return NewBooksView(book1: book1)
}
