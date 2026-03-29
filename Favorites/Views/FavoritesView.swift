//
//  FavoritesView.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/23/26.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject private var favorites: FavoritesViewModel
    @State private var showResetAlert: Bool = false
    
    var body: some View {
    
        ScrollView {
            LazyVStack {
                Text("Favorite Cities")
                ForEach(favorites.filteredFavoriteCities()) {city in
                    CityCardView(city: city)
                }
                Text("Favorite Hobbies")
                ForEach(favorites.filteredFavoriteHobbies()) {hobby in
                    HobbyRowView(hobby: hobby)
                }
                Text("Favorite Books")
                ForEach(favorites.filteredFavoriteBooks()) {book in
                    BookRowView(book: book)
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 10)
        }
        
    }
}
   

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())

}
