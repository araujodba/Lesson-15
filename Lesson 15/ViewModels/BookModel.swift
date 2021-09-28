//
//  BookModel.swift
//  Lesson 15
//
//  Created by Marcello Lima on 26/09/21.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books: [Book] = [Book]()
    init() {
        books = DataService.getDataLoad()
        
        for r in 0..<books.count {
            books[r].image  = "cover" + String(r + 1)
        }
    }
    static func updateFavorite(book: Book) {
        if book.isFavourite {
            book.isFavourite = false
        }
        else {
            book.isFavourite = true
        }
    }
}


