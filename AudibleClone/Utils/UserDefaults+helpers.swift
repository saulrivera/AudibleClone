//
//  UserDefaults+helpers.swift
//  AudibleClone
//
//  Created by Saul Rivera on 07/06/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import Foundation

extension UserDefaults {
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        UserDefaults.standard.set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
