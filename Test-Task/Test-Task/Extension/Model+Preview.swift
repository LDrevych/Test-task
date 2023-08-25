//
//  Model+Preview.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

//MARK: - MovieList + Preview
extension MovieList {
    static func preview() -> Self {
        MovieList(page: 0, totalResults: 200, totalPages: 300, result: [
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 2977623, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg"),
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 297764, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg"),
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 297751, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg"),
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 2, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg"),
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 29775343, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg"),
            MovieResult(poster: "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg", adult: false,
                        overview: "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                        realeaseDate: "2016-08-03", id: 421432, originalTitle: "Suicide Squad",
                        originalLanguage: "en", title: "Suicide Squad", backdrop: "tmU7GeKVybMWFButWEGl2M4GeiP.jpg")
        ])
    }
}
