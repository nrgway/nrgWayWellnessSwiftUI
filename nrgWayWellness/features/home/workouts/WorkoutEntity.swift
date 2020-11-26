//
//  WorkoutEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct WorkoutEntity: Identifiable {
    var id : Int
    var image : String
}
 
var workouts = [
    WorkoutEntity(id: 0, image: "28"),
    WorkoutEntity(id: 1, image: "21"),
    WorkoutEntity(id: 2, image: "22"),
    WorkoutEntity(id: 3, image: "23")
]
