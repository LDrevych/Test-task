//
//  URLRequestBuilder.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

final class URLRequestBuilder {
    
    private var url: URL?
    private var method: HTTPMethod = .GET
    private var headers: [String : String] = [:]
    private var body: Data?
    private var timeout: TimeInterval = Double(15)
    
    func setUrl(_ url: URL) -> Self {
        self.url = url
        return self
    }
    
    func setMethod(_ method: HTTPMethod) -> Self {
        self.method = method
        return self
    }
    
    func setHeaders(_ headers: [String : String]) -> Self {
        self.headers = headers
        return self
    }
    
    func setBody(_ body: Data?) -> Self {
        self.body = body
        return self
    }
    
    func setTimeout(timeout: Double) -> Self {
        self.timeout = timeout
        return self
    }
    
    public func build() -> URLRequest? {
        guard let url = url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        headers.forEach({  request.setValue($1, forHTTPHeaderField: $0) })
        request.httpBody = body
        
        return request
    }
}
