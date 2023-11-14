//
//  SearchView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack {
            Text("")
                .navigationTitle("Search")
        }
        .searchable(text: $searchText, prompt: "Books & Audiobooks")
    }
}

#Preview {
    SearchView()
}
