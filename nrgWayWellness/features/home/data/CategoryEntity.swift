//
//  CategoryEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/21/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct CategoryEntity : Identifiable {
   
    let id : Int?
    let countVideos : Int?
    let groupingKey : String?
    let imgUrl : String?
    let latestVideo : String?
    let name : String?
    let sortingKey : Int?
    
    var completeAvatarURL: URL? {
        imgUrl.map { WebAPI.imageBase.appendingPathComponent($0)}
    }
    
    var completeAvatar: String {
         if ((imgUrl) != nil) {
            return "https://nrg.scdn5.secure.raxcdn.com/storage/" + imgUrl!
        } else {
            return  "https://cf.geekdo-images.com/thumb/img/sD_qvrzIbvfobJj0ZDAaq-TnQPs=/fit-in/200x150/pic2649952.jpg"
        }
    }
    
    init(category: CategoriesData) {
        id = category.id
        countVideos = category.countVideos
        groupingKey = category.groupingKey
        imgUrl = category.imgUrl
        latestVideo = category.latestVideo
        name = category.name
        sortingKey = category.sortingKey
    }
}

