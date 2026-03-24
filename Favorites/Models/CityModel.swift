//
//  CityModel.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/23/26.
//

import Foundation

struct CityModel: Identifiable {
    let id: Int
    let cityName: String
    let cityImage: String
    var isFavorite: Bool = false
}
