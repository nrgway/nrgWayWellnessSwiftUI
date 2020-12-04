//
//  ResInstructors.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResInstructors<T: Codable> : Codable {

        let data : [T]
        let records : Int?
        let status : Bool? 

}
