//
//  BookRowView.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/28/26.
//

import SwiftUI

struct BookRowView: View {
    
    let book: BookModel
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        HStack {
            Text(book.bookTitle)
                .font(.system(size: 16, weight: .bold, design: .serif))
            Text(book.bookAuthor)
                .font(.system(size: 16, weight: .none, design: .serif))
            
            Spacer()
            
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
            }) {
                Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(book.isFavorite ? .red : .gray)
            }
        }
    }
}

#Preview {
    BookRowView(book: BookModel(id: 1, bookTitle: "Book Title", bookAuthor: "Book Author"))
}
