//
//  BookViewModel.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BooksViewModel {

    static var books1 = [
        Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito", categories: ["Top Charts", "Special Offers & Free"]),
        Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", cover: "doriangray", categories: ["Top Charts"]),
        Book(title: "1984", author: "George Orwell", cover: "1984", categories: ["Top Charts"]),
        Book(title: "Game of Thrones", author: "George R. R. Martin", cover: "gameofthrones", categories: ["Top Charts"]),
        Book(title: "Jin Ping Mei", author: "Lanling Xiaoxiao Sheng", cover: "jinping", categories: ["Top Charts"]),
        Book(title: "Padmaavat", author: "Malik Muhammad Jayasi", cover: "padmaavat", categories: ["Top Charts"])
    ]
    
    static var books2 = [
        Book(title: "1Q84", author: "Haruki Murakami", cover: "1Q84", categories: ["Top Charts"]),
        Book(title: "Beyond the Story: 10-Year Record of BTS", author: "BTS", cover: "BTS", categories: ["Top Charts"]),
        Book(title: "The Woman in Me", author: "Britney Spears", cover: "thewomaninme", categories: ["Top Charts"]),
        Book(title: "The Girl with Seven Names: A North Korean Defector's Story", author: "Lee Hyeon-seo", cover: "sevennames", categories: ["Top Charts"]),
        Book(title: "Animal Farm", author: "George Orwell", cover: "animalfarm", categories: ["Top Charts"]),
        Book(title: "Pride and Prejudice", author: "Jane Austen", cover: "prideandprejudice", categories: ["Top Charts"])
    ]
    
    static var books3 = [
        Book(title: "The True Story of Ah Q", author: "Lu Xun", cover: "ahq", categories: ["Top Charts"]),
        Book(title: "Genji Monogatari", author: "Murasaki Shikibu", cover: "genji", categories: ["Top Charts"]),
        Book(title: "Dhola Maru", author: "Gayatri Madan Dutt", cover: "dholamaru", categories: ["Top Charts"]),
    ]
}
