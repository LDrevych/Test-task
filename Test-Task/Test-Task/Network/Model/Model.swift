//
//  Model.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

 struct MovieList: Codable, Equatable {
     let page: Int
     let totalResults: Int?
     let totalPages: Int?
     let result: [MovieResult]

     enum CodingKeys: String, CodingKey {
         case page
         case totalResults = "total_results"
         case totalPages = "total_pages"
         case result = "results"
     }
 }

 struct MovieResult: Codable, Identifiable, Hashable, Equatable {
     let poster: String?
     let adult: Bool
     let overview: String
     let realeaseDate: String
     let id: Int
     let originalTitle: String
     let originalLanguage: String
     let title: String
     let backdrop: String

     enum CodingKeys: String, CodingKey {
         case poster = "poster_path"
         case backdrop = "backdrop_path"
         case adult
         case overview
         case realeaseDate = "release_date"
         case id
         case originalTitle = "original_title"
         case originalLanguage = "original_language"
         case title
     }
}

//MARK: - https://developer.themoviedb.org/reference/movie-top-rated-list

