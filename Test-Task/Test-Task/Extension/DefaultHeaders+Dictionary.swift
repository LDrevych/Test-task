//
//  DefaultHeaders+Dictionary.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

//MARK: Dictionary + Get Default headers
extension Dictionary where Key == String, Value == String {
   static func getDefaultHeaders() -> Self {
        return [
            "Content-Type": "application/json;charset=utf-8"
        ]
    }
}
