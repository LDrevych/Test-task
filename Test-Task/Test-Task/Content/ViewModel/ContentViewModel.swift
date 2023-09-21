//
//  ContentViewModel.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
    
    //MARK: - Variables
    @Published var movies: [MovieResult] = []
    @Published var carouselMode: [CarouselModel] = []
    
    //MARK: - Private Variable
    private var provider: TopRatedMovieProviderProtocol
    
    //MARK: - Life cycle
    init(provider: TopRatedMovieProviderProtocol) {
        self.provider = provider
        self.carouselMode = generateRandomModel()
    }
    
    //MARK: - Methods
    func fetchTopRatedMovies(for page: Int) {
        Task {
            do {
                let endpoint = GetTopRatedEnpoint.getTopRated
                let result = try await provider.getTopRatadMovie(with: endpoint, parameters: ["api_key": Config.secret, "page": "\(page + 1)"])
                movies = result.result
            } catch {
                print("Error fetching movies: \(error)")
            }
        }
    }
        
    //MARK: - Private Method
    private func generateRandomModel() -> [CarouselModel] {
        var result: [CarouselModel] = []
        let randomItemCount = Int.random(in: 3...50)
        
        for _ in 1...randomItemCount {
            result.append(CarouselModel(id: UUID()))
        }
        
        return result
    }
}
