//
//  BookViewModel.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BooksViewModel {

    static var books1 = [
        Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito", categories: ["Special Offers & Free", "Fiction & Literature", "Kids", "Books in English"]),
        Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", cover: "doriangray", categories: ["Fiction & Literature", "Special Offers & Free", "Books in English"]),
        Book(title: "1984", author: "George Orwell", cover: "1984", categories: ["Top Charts", "Fiction & Literature", "Books in English"]),
        Book(title: "Game of Thrones", author: "George R. R. Martin", cover: "gameofthrones", categories: ["Top Charts", "Sci-Fi & Fantasy", "Books in English"]),
        Book(title: "Jin Ping Mei", author: "Lanling Xiaoxiao Sheng", cover: "jinping", categories: ["Fiction & Literature", "Books in English"]),
        Book(title: "Padmaavat", author: "Malik Muhammad Jayasi", cover: "padmaavat", categories: ["Fiction & Literature", "Books in English"]),
        Book(title: "Wicca: A Guide for the Solitary Practitioner", author: "Scott Cunningham", cover: "wicca1", categories: ["Religion & Spirituality", "Books in English", "Health & Well-Being"]),
        Book(title: "Spell Crafts: Creating Magical Objects", author: "Scott Cunningham", cover: "wicca2", categories: ["Religion & Spirituality", "Books in English", "Health & Well-Being"]),
        Book(title: "The Truth About Witchcraft Today", author: "Scott Cunningham", cover: "wicca3", categories: ["Religion & Spirituality", "Books in English", "Health & Well-Being"]),
        Book(title: "La profezia dell'armadillo", author: "Zerocalcare", cover: "armadillo", categories: ["Top Charts", "Comics & Graphic Novels"])
    ]
    
    static var books2 = [
        Book(title: "1Q84", author: "Haruki Murakami", cover: "1Q84", categories: ["Fiction & Literature", "Special Offers & Free", "Books in English"]),
        Book(title: "Beyond the Story: 10-Year Record of BTS", author: "BTS", cover: "BTS", categories: ["Top Charts", "Biography", "Books in English"]),
        Book(title: "The Woman in Me", author: "Britney Spears", cover: "thewomaninme", categories: ["Top Charts", "Biography", "Books in English", "Non-Fiction"]),
        Book(title: "The Girl with Seven Names: A North Korean Defector's Story", author: "Lee Hyeon-seo", cover: "sevennames", categories: ["Biography", "Top Charts", "Books in English", "Non-Fiction"]),
        Book(title: "Animal Farm", author: "George Orwell", cover: "animalfarm", categories: ["Fiction & Literature", "Special Offers & Free", "Books in English"]),
        Book(title: "Pride and Prejudice", author: "Jane Austen", cover: "prideandprejudice", categories: ["Fiction & Literature", "Romance", "Special Offers & Free", "Books in English"]),
        Book(title: "The Holy Bible", author: "Zeiset", cover: "bible", categories: ["Religion & Spirituality", "Health & Well-Being"]),
        Book(title: "Quran", author: "Muhammad", cover: "quran", categories: ["Religion & Spirituality", "Health & Well-Being"]),
        Book(title: "The Art of War", author: "Sun Tzu", cover: "war", categories: ["Religion & Spirituality", "Books in English", "Non-Fiction", "Health & Well-Being"]),
        Book(title: "The Art of War for Women", author: "Sun Tzu", cover: "warwomen", categories: ["Religion & Spirituality", "Books in English", "Non-Fiction", "Health & Well-Being"])
    ]
    
    static var books3 = [
        Book(title: "The True Story of Ah Q", author: "Lu Xun", cover: "ahq", categories: ["Fiction & Literature", "Books in English"]),
        Book(title: "Genji Monogatari", author: "Murasaki Shikibu", cover: "genji", categories: ["Fiction & Literature", "Books in English"]),
        Book(title: "Dhola Maru", author: "Gayatri Madan Dutt", cover: "dholamaru", categories: ["Fiction & Literature", "Books in English"]),
    ]
    
    static var books4 = [
        Book(title: "Memory of a Geisha", author: "Arthur Golden", cover: "geisha", categories: ["Romance", "Biography", "Books in English", "Non-Fiction"]),
        Book(title: "In Order To Live: A North Korean Girl's Journey to Freedom", author: "Yeonmi Park", cover: "inordertolive", categories: ["Biography", "Books in English", "Non-Fiction"]),
        Book(title: "L'elenco telefonico degli accolli", author: "Zerocalcare", cover: "accolli", categories: ["Comics & Graphic Novels"]),
        Book(title: "iOS Development with SwiftUI", author: "Apple", cover: "swift", categories: ["Computing & Internet", "Education"]),
        Book(title: "Pro iPhone Development with SwiftUI", author: "Apple", cover: "swiftui", categories: ["Computing & Internet", "Education"]),
        Book(title: "Dieci piccoli indiani. E non ne rimase nessuno", author: "Agatha Christie", cover: "10indiani", categories: ["Crime & Thrillers"]),
        Book(title: "Death on the Nile", author: "Agatha Christie", cover: "nile", categories: ["Crime & Thrillers", "Books in English"]),
        Book(title: "Harry Potter and the Cursed Child", author: "J. K. Rowling", cover: "cursedchild", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Riot. Amore e lotta", author: "Edith Joyce", cover: "riot", categories: ["Romance", "Young Adult"]),
        Book(title: "Fabbricante di lacrime", author: "Erin Doom", cover: "lacrime", categories: ["Romance", "Young Adult"])
    ]
    
    static var books5 = [
        Book(title: "SwiftUI by Tutorials", author: "Apple", cover: "tutorials", categories: ["Computing & Internet", "Education"]),
        Book(title: "Beginning iOS Programming with Swift and UIKit (iOS 16 & Xcode 14 Ready)", author: "Apple", cover: "ios", categories: ["Computing & Internet", "Education"]),
        Book(title: "True beauty 1", author: "Yaongyi", cover: "truebeauty1", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 2", author: "Yaongyi", cover: "truebeauty2", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 3", author: "Yaongyi", cover: "truebeauty3", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 4", author: "Yaongyi", cover: "truebeauty4", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 5", author: "Yaongyi", cover: "truebeauty5", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 6", author: "Yaongyi", cover: "truebeauty6", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 7", author: "Yaongyi", cover: "truebeauty7", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "True beauty 8", author: "Yaongyi", cover: "truebeauty8", categories: ["Romance", "Comics & Graphic Novels", "Books in English"]),
        Book(title: "It", author: "Stephen King", cover: "it", categories: ["Crime & Thrillers", "Books in English"]),
        Book(title: "The outsider", author: "Stephen King", cover: "outsider", categories: ["Crime & Thrillers", "Books in English"]),
        Book(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", cover: "harrypotter1", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the chamber of secrets", author: "J. K. Rowling", cover: "harrypotter2", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", cover: "harrypotter3", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the goblet of fire", author: "J. K. Rowling", cover: "harrypotter4", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the Order of Phoenix", author: "J. K. Rowling", cover: "harrypotter5", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the Half-Blood Prince", author: "J. K. Rowling", cover: "harrypotter6", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Harry Potter and the deathly hallows", author: "J. K. Rowling", cover: "harrypotter7", categories: ["Kids", "Sci-Fi & Fantasy", "Books in English", "Travel & Adventure"]),
        Book(title: "Stigma", author: "Erin Doom", cover: "stigma", categories: ["Romance", "Young Adult"]),
    ]
}
