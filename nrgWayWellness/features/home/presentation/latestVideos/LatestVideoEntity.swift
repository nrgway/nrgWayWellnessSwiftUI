//
//  LatestVideoEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
struct LatestVideoEntity : Identifiable {
    var id : Int
    var name : String
    var image : String
}

var latestVideos = [
    LatestVideoEntity(id: 0, name: "Kane", image: "28"),
    LatestVideoEntity(id: 1, name: "Danny", image: "21"),
    LatestVideoEntity(id: 2, name: "Alyson", image: "22"),
    LatestVideoEntity(id: 3, name: "rfgbfd", image: "23")
]
