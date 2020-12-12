//
//  CategoryData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct CategoryData<T: Codable> : Codable {
    let category : T             
}

