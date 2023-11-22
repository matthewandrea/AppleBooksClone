//
//  NewBooksView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 19/11/23.
//

import SwiftUI

struct NewBooksView: View {
    
    var book3: Book
    
    var body: some View {
        
        ZStack {
            VStack (alignment: .leading) {
                Divider()
                    .padding(.top, 2)
                
                VStack (alignment: .leading) {
                    Text("NEW")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .accessibilityLabel("New book")
                    
                    Text(book3.title)
                        .font(Font.custom("Georgia-Bold", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .accessibilityLabel("Title: \(book3.title)")
                    
                    Text(book3.author)
                        .font(Font.custom("Georgia-Normal", size: 20))
                        .foregroundColor(.gray)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .accessibilityLabel("Author: \(book3.author)")
                        .accessibilityHint("Double tap to see the details or read the book or swipe horizontally with three fingers to explore more books")
                }
                .padding(.top, 30)
                
                VStack {
                    Rectangle()
                        .fill(Color("MyColor").opacity(0.8))
                        .cornerRadius(20)
                        .overlay(
                            Image(book3.cover)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(4)
                                .frame(height: 180)
                                .accessibilityRemoveTraits(.isImage)
                        )
                        .frame(width: 360, height: 230)
                }
               .accessibilityHidden(true)
            }
        }
    }
}


#Preview {
    let book3 = Book(title: "The True Story of Ah Q", author: "Lu Xun", cover: "ahq", categories: ["Top Charts"])
    return NewBooksView(book3: book3)
}
