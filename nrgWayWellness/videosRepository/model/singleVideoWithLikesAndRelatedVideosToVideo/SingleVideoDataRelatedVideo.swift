//
//  SingleVideoDataRelatedVideo.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation

struct SingleVideoDataRelatedVideo : Codable {

        let createdAt : String?
        let creator : SingleVideoDataCreator?
        let difficultyId : Int?
        let internalNotes : String?
        let length : Int?
        let likes : String?
        let publicDescription : String?
        let releaseDate : String?
        let shortUrl : String?
        let statusId : Int?
        let thumbnail : String?
        let title : String?
        let updatedAt : String?
        let uploadsEnabled : Bool?
        let urlHigh : String?
        let urlLow : String?
        let urlMedium : String?
        let urlOriginal : String?

        enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case creator = "creator"
                case difficultyId = "difficulty_id"
                case internalNotes = "internal_notes"
                case length = "length"
                case likes = "likes"
                case publicDescription = "public_description"
                case releaseDate = "release_date"
                case shortUrl = "short_url"
                case statusId = "status_id"
                case thumbnail = "thumbnail"
                case title = "title"
                case updatedAt = "updated_at"
                case uploadsEnabled = "uploads_enabled"
                case urlHigh = "url_high"
                case urlLow = "url_low"
                case urlMedium = "url_medium"
                case urlOriginal = "url_original"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
            creator = try SingleVideoDataCreator(from: decoder)
                difficultyId = try values.decodeIfPresent(Int.self, forKey: .difficultyId)
                internalNotes = try values.decodeIfPresent(String.self, forKey: .internalNotes)
                length = try values.decodeIfPresent(Int.self, forKey: .length)
                likes = try values.decodeIfPresent(String.self, forKey: .likes)
                publicDescription = try values.decodeIfPresent(String.self, forKey: .publicDescription)
                releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
                shortUrl = try values.decodeIfPresent(String.self, forKey: .shortUrl)
                statusId = try values.decodeIfPresent(Int.self, forKey: .statusId)
                thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
                title = try values.decodeIfPresent(String.self, forKey: .title)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
                uploadsEnabled = try values.decodeIfPresent(Bool.self, forKey: .uploadsEnabled)
                urlHigh = try values.decodeIfPresent(String.self, forKey: .urlHigh)
                urlLow = try values.decodeIfPresent(String.self, forKey: .urlLow)
                urlMedium = try values.decodeIfPresent(String.self, forKey: .urlMedium)
                urlOriginal = try values.decodeIfPresent(String.self, forKey: .urlOriginal)
        }

}

