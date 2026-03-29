//
//  CitiesView.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/28/26.
//

import SwiftUI

struct CitiesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredCities(searchText: searchText)) {city in
                    CityCardView(city: city)
                }
            }
            .padding()
        }
    }
}
#Preview {
    CitiesView(searchText: .constant(""))
        .environmentObject(FavoritesViewModel())
}

