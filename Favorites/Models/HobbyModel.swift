//
//  HobbyModel.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/23/26.
//

import Foundation

struct HobbyModel: Identifiable {
    let id: Int
    let hobbyName: String
    let hobbyIcon: String
    var isFavorite: Bool = false
}
