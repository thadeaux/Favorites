//
//  BooksView.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/28/26.
//

import SwiftUI

struct BooksView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredBooks(searchText: searchText)) {book in
                    BookRowView(book: book)
                }
            }
            .padding()
        }
    }
}


