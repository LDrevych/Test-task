//
//  ContentView.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel
    
    @State private var searchText: String = ""
    @State private var currentPage = 0
    @State private var showImageCarousel = true
    
    private var filteredMovies: [MovieResult] {
        searchText.isEmpty ? viewModel.movies : viewModel.movies.filter { $0.originalTitle.localizedCaseInsensitiveContains(searchText) }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollableContent(searchText: $searchText, currentPage: $currentPage, carouselModel: viewModel.carouselMode, filteredMovies: filteredMovies)
            }.onAppear(perform: {
                viewModel.fetchTopRatedMovies(for: currentPage)
            })
            .onChange(of: currentPage, perform: { newValue in
                viewModel.fetchTopRatedMovies(for: newValue)
            })
            .navigationTitle("Movies")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let provider = TopRatedMovieProvider()
        ContentView(viewModel: ContentViewModel(provider: provider))
    }
}
