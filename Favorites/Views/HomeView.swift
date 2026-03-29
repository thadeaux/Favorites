//
//  HomeView.swift
//  Favorites
//
//  Created by Thad Aldridge on 3/23/26.
//

import SwiftUI

enum ContentCategory : String, CaseIterable {
    case cities = "Cities"
    case hobbies = "Hobbies"
    case books = "Books"
}

struct HomeView: View {
    
    @State private var selectedCategory: ContentCategory = .cities
    @State private var searchText: String = ""
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Categories", selection: $selectedCategory) {
                    ForEach(ContentCategory.allCases, id: \.self) {
                        category in Text(category.rawValue).tag(category)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                selectedContentView()
            }
            .navigationTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search \(selectedCategory.rawValue)")
        }
    }
    @ViewBuilder
    private func selectedContentView() -> some View {
        if selectedCategory == .cities {
            CitiesView(searchText: $searchText)
        } else if selectedCategory == .hobbies {
            HobbiesView(searchText: $searchText)
        } else {
            BooksView(searchText: $searchText)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(FavoritesViewModel())
}
