//
//  ScrollableContent.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct ScrollableContent: View {
    
    @Binding var searchText: String
    @Binding var currentPage: Int
    
    let carouselModel: [CarouselModel]
    var filteredMovies: [MovieResult]
    
    var body: some View {
        VStack(spacing: 0) {
            LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]) {
                MovieListView(searchText: $searchText, filteredMovies: filteredMovies)
                EmptyMovieListPlaceholder(filteredMovies: filteredMovies)
            }
        }
    }
}

struct ScrollableContent_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableContent(searchText: .constant("Dude"), currentPage: .constant(1), carouselModel: [CarouselModel(id: UUID()), CarouselModel(id: UUID()), CarouselModel(id: UUID()), CarouselModel(id: UUID())], filteredMovies: MovieList.preview().result)
    }
}
