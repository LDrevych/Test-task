//
//  EmptyMovieListPlaceholder.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct EmptyMovieListPlaceholder: View {
    
    var filteredMovies: [MovieResult]
    
    var body: some View {
        if filteredMovies.isEmpty {
            Text("No movies found")
                .foregroundColor(.gray)
                .padding([.horizontal, .top], 10)
        }
    }
}

struct EmptyMovieListPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        EmptyMovieListPlaceholder(filteredMovies: [])
    }
}
