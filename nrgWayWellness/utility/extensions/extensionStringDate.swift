//
//  extensionStringDate.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/24/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

extension String {
    func toDate(format: String) -> Date? {
        let df = DateFormatter()
        df.dateFormat = format
        return df.date(from: self)
    }
}

extension Date {
    func toString(format: String) -> String {
        let df = DateFormatter()
        df.dateFormat = format
        return df.string(from: self)
    }
}
