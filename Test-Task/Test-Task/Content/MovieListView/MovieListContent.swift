//
//  MovieListContent.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct MovieListView: View {
    
    @Binding var searchText: String
    var filteredMovies: [MovieResult]
    
    var body: some View {
        Section {
            ForEach(filteredMovies) { movie in
                MovieListItem(movie: movie)
            }.padding(.horizontal, 10)
        } header: {
            SearchBar(text: $searchText)
                .padding(.horizontal)
                .background(Color.white)
        }
    }
}

struct MovieListContent_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(searchText: .constant("Test"), filteredMovies: MovieList.preview().result)
    }
}
