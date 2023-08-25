//
//  MovieListItem.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct MovieListItem: View {
    
    let movie: MovieResult
    
    var body: some View {
        HStack(spacing: 16) {
            PosterImage(movie: movie)
            VStack(alignment: .leading, spacing: 4) {
                Text(movie.originalTitle)
                    .font(.headline)
                    .lineLimit(2)
            }
        }.padding(.vertical, 8)
        .padding(.horizontal, 12)
    }
}

struct MovieListItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItem(movie: MovieList.preview().result[1])
    }
}
