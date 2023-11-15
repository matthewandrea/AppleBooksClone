//
//  Book.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import Foundation
import SwiftUI

struct Book: Identifiable {
    
    var id = UUID()
    var title: String
    var author: String
    var cover: String
    
}
