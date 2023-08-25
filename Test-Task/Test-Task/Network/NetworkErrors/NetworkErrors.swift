//
//  NetworkErrors.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

public enum NetworkError: LocalizedError {
     //MARK: - Network errors
     case wrongURL(string: String)
     case couldNotParseJSON(info: String)
     case unknown(info: String)
     case requestCreationError
     case serializationError
     case requestFailed(statusCode: Int)
     case networkConnectionError
     case networkError
 }
