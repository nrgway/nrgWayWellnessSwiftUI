//
//  UserDefault.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/14/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
    
    let key: String
    let defaultValue: T
    
    var wrappedValue: T {
        
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        } set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
