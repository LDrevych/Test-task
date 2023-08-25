//
//  TopRatedMovieEndpoint.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

enum GetTopRatedEnpoint: Endpoint {

    case getTopRated
    
    var method: HTTPMethod {
        switch self {
            case .getTopRated: return .GET
        }
    }
    
    var path: String {
        switch self {
            case .getTopRated: return "top_rated"
        }
    }
    
    var headers: [String : String] {
        .getDefaultHeaders()
    }
    
    var body: Data? {
        nil
    }
}
