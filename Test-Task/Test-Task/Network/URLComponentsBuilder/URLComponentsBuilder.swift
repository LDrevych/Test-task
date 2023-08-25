//
//  URLComponentsBuilder.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

public enum ServerSchema: String {
    case https
    case http
}

final class URLComponentsBuilder {
    
    private var schema: ServerSchema?
    private var host: String = "api.themoviedb.org"
    private var path: String = ""
    private var queryItems: [URLQueryItem] = []
    
    func setSchema(_ schema: ServerSchema) -> Self {
        self.schema = schema
        return self
    }
    
    func setHost(_ host: String) -> Self {
        self.host = host
        return self
    }
    
    func setPath(_ path: String) -> Self {
        self.path = "/3/movie/" + path
        return self
    }
    
    func addQueryItems(_ items: [URLQueryItem]) -> Self {
        self.queryItems = items
        return self
    }
    
    func build() -> URL? {
        var components = URLComponents()
        components.scheme = schema?.rawValue
        components.host = host
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
}
