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


extension Optional where Wrapped: Collection {

    var isEmptyOrNil: Bool {
        return self?.isEmpty ?? true
    }

}

extension String{
    
    //Validate Email
    var isEmail: Bool {
            do {
                let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
                return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
            } catch {
                return false
            }
    }
    
    //validate PhoneNumber
      
    
    var htmlStripped : String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
    
}
