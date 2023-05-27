//
//  AppConfig.swift
//  Movie Search UIKit
//
//  Created by Igor  Vojinovic on 27.5.23..
//

import UIKit

extension UIApplication {
    
    // MARK: - Properties
    
    class var config: [String: Any] {
        guard let configDict = Bundle.main.object(forInfoDictionaryKey: "Config") as? [String : Any] else {
            fatalError("Info plist could not be found")
        }
        return configDict
    }
        
    class var baseURL: String? {
        return config["BaseURL"] as? String
    }
}
