//
//  Endpoint.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

protocol Endpoint {
    var method: HTTPMethod { get }
    var path: String { get }
    var headers: [String : String] { get }
    var body: Data? { get }
}
