//
//  SectionsDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 15/11/23.
//

import SwiftUI

struct SectionsDetailView: View {
    var category: String
    
    var body: some View {
        Text("")
            .navigationTitle(category)
    }
}

#Preview {
    SectionsDetailView(category: "Top Charts")
}
