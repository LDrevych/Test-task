//
//  Config.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import Foundation

final class Config {
    
    fileprivate enum Keys {
        static let secret = "SECRET"
    }
    
    static let secret: String = {
        guard let secret = Bundle.main.infoDictionary?[Keys.secret] as? String else {
            fatalError("NO SECRET") //bad practice but for now ok, just to undestand that we have SECRET - Api key which we will use for network
        }
        return secret
    }()
    
}
