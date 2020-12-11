//
//  CategoriesData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

struct CategoriesData : Codable {
    
    let countVideos : Int?
    let groupingKey : String?
    let id : Int?
    let imgUrl : String?
    let latestVideo : String?
    let name : String?
    let sortingKey : Int?

    enum CodingKeys: String, CodingKey {
            case countVideos = "countVideos"
            case groupingKey = "grouping_key"
            case id = "id"
            case imgUrl = "img_url"
            case latestVideo = "latest_video"
            case name = "name"
            case sortingKey = "sorting_key"
    }

    init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            countVideos = try values.decodeIfPresent(Int.self, forKey: .countVideos)
            groupingKey = try values.decodeIfPresent(String.self, forKey: .groupingKey)
            id = try values.decodeIfPresent(Int.self, forKey: .id)
            imgUrl = try values.decodeIfPresent(String.self, forKey: .imgUrl)
            latestVideo = try values.decodeIfPresent(String.self, forKey: .latestVideo)
            name = try values.decodeIfPresent(String.self, forKey: .name)
            sortingKey = try values.decodeIfPresent(Int.self, forKey: .sortingKey)
    }

}
