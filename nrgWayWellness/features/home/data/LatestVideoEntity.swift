//
//  LatestVideoEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/21/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct LatestVideoEntity : Identifiable {
    let createdAt : String?
    let creatorId : Int?
    let difficultyId : Int?
    let id : Int?
    let internalNotes : String?
    let length : Int?
    let likes : Int?
    let publicDescription : String?
    let releaseDate : String?
    let shortUrl : String?
    let statusId : Int?
    let thumbnail : String?
    let title : String?
    let updatedAt : String?
    let uploadsEnabled : Int?
    let urlHigh : String?
    let urlLow : String?
    let urlMedium : String?
    let urlOriginal : String?
    let vimeoUri : String?
    
    var completeThumbnailURL: URL? {
        thumbnail.map { WebAPI.imageBase.appendingPathComponent($0)}
        
    }
    
    var completeThumbnail: String {
         if ((thumbnail) != nil) {
            return "https://nrg.scdn5.secure.raxcdn.com/storage/" + thumbnail!
        } else {
            return  "https://cf.geekdo-images.com/thumb/img/sD_qvrzIbvfobJj0ZDAaq-TnQPs=/fit-in/200x150/pic2649952.jpg"
        }
    }
    
    init(video: ListOfvideosData) {
        id = video.id
        createdAt = video.createdAt
        creatorId = video.creatorId
        difficultyId = video.difficultyId
        internalNotes = video.internalNotes
        length = video.length
        likes = video.likes
        publicDescription = video.publicDescription
        releaseDate = video.releaseDate
        shortUrl = video.shortUrl
        statusId = video.statusId
        thumbnail = video.thumbnail
        title = video.title
        updatedAt = video.updatedAt
        uploadsEnabled = video.uploadsEnabled
        urlHigh = video.urlHigh
        urlLow = video.urlLow
        urlMedium = video.urlMedium
        urlOriginal = video.urlOriginal
        vimeoUri = video.vimeoUri
    }
    
}

 
