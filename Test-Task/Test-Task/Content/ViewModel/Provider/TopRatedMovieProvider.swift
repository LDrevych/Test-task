//
//  TopRatedMovieProvider.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

protocol TopRatedMovieProviderProtocol: AnyObject {
    func getTopRatadMovie(with endpoint: Endpoint, parameters: [String : String]) async throws -> MovieList
}

final class TopRatedMovieProvider: APIClient, TopRatedMovieProviderProtocol {
    public func getTopRatadMovie(with endpoint: Endpoint, parameters: [String : String]) async throws -> MovieList {
        return try await sendRequest(with: endpoint, parameters: parameters)
    }
}
