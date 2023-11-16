//
//  Sections.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 15/11/23.
//

import Foundation

struct Section: Identifiable {
    
    var id: UUID = UUID()
    var category: String
    var emoji: String
}
