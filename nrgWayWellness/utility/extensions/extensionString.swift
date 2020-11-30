//
//  extensionString.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/24/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

//extension String {
//    var trimmed: String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//    
//    mutating func trim() {
//        self = self.trimmed
//    }
//}

extension String {
    var asURL: URL? {
        URL(string: self)
    }
}

