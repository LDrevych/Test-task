//
//  APIClient.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

public class APIClient {
    
    private var session: URLSession
    
    init() {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = Double(15)
        config.timeoutIntervalForResource = Double(15)
        session = URLSession(configuration: config)
    }
    
    deinit {
        debugPrint("deinit -> ", self)
    }
    
    func sendRequest<T: Codable>(with endpoints: Endpoint, parameters: [String : String]) async throws -> T {
        
        guard let request = try? createRequest(endpoints: endpoints, with: parameters) else {
            throw NetworkError.requestCreationError
        }
    
        do {
            let (data, response) = try await session.data(for: request)
            
            guard let response = response as? HTTPURLResponse else {
                throw NetworkError.unknown(info: "Cannot create response")
            }
            
            switch response.statusCode {
            case 200...299:
                let model = try parse(data: data, for: T.self)
                return model
            default:
                throw NetworkError.requestFailed(statusCode: response.statusCode)
            }
        } catch {
            throw NetworkError.networkError
        }
    }
}

//MARK: - APIClient + Parse
extension APIClient {
    fileprivate func parse<T: Decodable>(data: Data, for type: T.Type) throws -> T {
        do {
            let response = try JSONDecoder().decode(type.self, from: data)
            return response
        } catch {
            throw NetworkError.couldNotParseJSON(info: "check coding keys")
        }
    }
}

//MARK: - APIClient + Create: Request and URL
extension APIClient {
    
    fileprivate func createRequest(endpoints: Endpoint, with parameters: [String : String]) throws -> URLRequest? {
        
        let url = try createURL(endpoint: endpoints, with: parameters)
        
        let request = URLRequestBuilder()
            .setHeaders(endpoints.headers)
            .setTimeout(timeout: 15.0)
            .setMethod(endpoints.method)
            .setUrl(url)
            .build()
        
        return request
    }
    
    fileprivate func createURL(endpoint: Endpoint, with parameters: [String : String]) throws -> URL {
        
        let urlComponents = parameters.map { key, value in
            URLQueryItem(name: key, value: value)
        }
        
        let url = URLComponentsBuilder()
            .setPath(endpoint.path)
            .setSchema(.https)
            .addQueryItems(urlComponents)
            .build()
        
        guard let url = url else {
            throw NetworkError.wrongURL(string: "Please check URLComponentsBuilder and data for builder")
        }
        
        return url
    }
}
