//
//  CategoryData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct CategoryData : Codable {

        let createdAt : String?
        let descriptionField : String?
        let groupingKey : String?
        let imgUrl : String?
        let name : String?
        let promotionalVideo : String?
        let promotionalVideoSize : Int?
        let showDifficulties : Bool?
        let showInSearch : Bool?
        let showOnCategories : Bool?
        let sortingKey : Int?
        let updatedAt : String?

        enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case descriptionField = "description"
                case groupingKey = "grouping_key"
                case imgUrl = "img_url"
                case name = "name"
                case promotionalVideo = "promotional_video"
                case promotionalVideoSize = "promotional_video_size"
                case showDifficulties = "show_difficulties"
                case showInSearch = "show_in_search"
                case showOnCategories = "show_on_categories"
                case sortingKey = "sorting_key"
                case updatedAt = "updated_at"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
                groupingKey = try values.decodeIfPresent(String.self, forKey: .groupingKey)
                imgUrl = try values.decodeIfPresent(String.self, forKey: .imgUrl)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                promotionalVideo = try values.decodeIfPresent(String.self, forKey: .promotionalVideo)
                promotionalVideoSize = try values.decodeIfPresent(Int.self, forKey: .promotionalVideoSize)
                showDifficulties = try values.decodeIfPresent(Bool.self, forKey: .showDifficulties)
                showInSearch = try values.decodeIfPresent(Bool.self, forKey: .showInSearch)
                showOnCategories = try values.decodeIfPresent(Bool.self, forKey: .showOnCategories)
                sortingKey = try values.decodeIfPresent(Int.self, forKey: .sortingKey)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        }

}

