//
//  Utility.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/16/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

class Utility: NSObject {
    
    private static var timeHMSFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = [.pad]
        return formatter
    }()
    
    static func formatSecondsToHMS(_ seconds: Double) -> String {
        guard !seconds.isNaN,
            let text = timeHMSFormatter.string(from: seconds) else {
                return "00:00"
        }
         
        return text
    }
    
}

