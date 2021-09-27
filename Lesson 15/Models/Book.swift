//
//  BookModel.swift
//  Lesson 15
//
//  Created by Marcello Lima on 26/09/21.
//

import Foundation

class Book: ObservableObject, Identifiable, Decodable {
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
    var image: String?
}
