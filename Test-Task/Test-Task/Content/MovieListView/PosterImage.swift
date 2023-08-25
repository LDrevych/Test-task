//
//  PosterImage.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct PosterImage: View {
    
    let movie: MovieResult
    
    private var posterURL: URL? {
        URL(string: "https://image.tmdb.org/t/p/w185\(movie.poster ?? "")")
    }
    
    var body: some View {
        AsyncImage(url: posterURL , content: { phase in
            if let image = phase.image {
                image
                    .frame(width: 30, height: 30)
                    .cornerRadius(8.0)
            } else {
                Image("horse")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(8.0)
            }
        })
    }
}

struct PosterImage_Previews: PreviewProvider {
    static var previews: some View {
        PosterImage(movie: MovieList.preview().result[1])
    }
}
