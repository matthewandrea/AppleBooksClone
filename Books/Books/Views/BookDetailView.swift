//
//  BookDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        
        VStack {
            
            Image("\(book.cover)")
                .resizable()
                .scaledToFit()
            
            Text("\(book.title)")
                .font(.title)
                .bold()
            
            Text("\(book.author)")
                .font(.title2)
                .foregroundStyle(Color.blue)
            
        }
        
    }
    
}

#Preview {
    BookDetailView(book:
                    Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito")
    )
}

