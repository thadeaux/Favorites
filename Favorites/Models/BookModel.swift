//
//  BookModel.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/23/26.
//

import Foundation

struct BookModel: Identifiable {
    let id: Int
    let bookTitle: String
    let bookAuthor: String
    var isFavorite: Bool = false
}
