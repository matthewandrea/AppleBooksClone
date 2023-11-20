//
//  BookViewModel.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BooksViewModel {

    static var books1 = [
        Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito", categories: ["Top Charts", "Special Offers & Free", "Fiction & Literature", "Kids", "Books in English"]),
        Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", cover: "doriangray", categories: ["Fiction & Literature", "Special Offers & Free", "Books in English"]),
        Book(title: "1984", author: "George Orwell", cover: "1984", categories: ["Top Charts", "Fiction & Literature", "Books in English"]),
        Book(title: "Game of Thrones", author: "George R. R. Martin", cover: "gameofthrones", categories: ["Top Charts", "Sci-Fi & Fantasy"]),
        Book(title: "Jin Ping Mei", author: "Lanling Xiaoxiao Sheng", cover: "jinping", categories: ["Fiction & Literature"]),
        Book(title: "Padmaavat", author: "Malik Muhammad Jayasi", cover: "padmaavat", categories: ["Fiction & Literature"])
    ]
    
    static var books2 = [
        Book(title: "1Q84", author: "Haruki Murakami", cover: "1Q84", categories: ["Fiction & Literature", "Special Offers & Free"]),
        Book(title: "Beyond the Story: 10-Year Record of BTS", author: "BTS", cover: "BTS", categories: ["Top Charts", "Biography"]),
        Book(title: "The Woman in Me", author: "Britney Spears", cover: "thewomaninme", categories: ["Top Charts", "Biography", "Books in English"]),
        Book(title: "The Girl with Seven Names: A North Korean Defector's Story", author: "Lee Hyeon-seo", cover: "sevennames", categories: ["Top Charts", "Books in English"]),
        Book(title: "Animal Farm", author: "George Orwell", cover: "animalfarm", categories: ["Fiction & Literature", "Special Offers & Free", "Books in English"]),
        Book(title: "Pride and Prejudice", author: "Jane Austen", cover: "prideandprejudice", categories: ["Fiction & Literature", "Romance", "Special Offers & Free", "Books in English"])
    ]
    
    static var books3 = [
        Book(title: "The True Story of Ah Q", author: "Lu Xun", cover: "ahq", categories: ["Fiction & Literature"]),
        Book(title: "Genji Monogatari", author: "Murasaki Shikibu", cover: "genji", categories: ["Fiction & Literature"]),
        Book(title: "Dhola Maru", author: "Gayatri Madan Dutt", cover: "dholamaru", categories: ["Fiction & Literature"]),
    ]
}
