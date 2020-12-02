//
//  ChallengeEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

struct ChallengeEntity : Identifiable {
    var id : Int
    var name : String
    var image : String
}

var challenges = [
    ChallengeEntity(id: 0, name: "Kane", image: "28"),
    ChallengeEntity(id: 1, name: "Danny", image: "21"),
    ChallengeEntity(id: 2, name: "Alyson", image: "22"),
    ChallengeEntity(id: 3, name: "rfgbfd", image: "23")
]
