//
//  SpecificCategoryEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/21/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation
struct SpecificCategoryEntity : Identifiable {
   
    let createdAt : String?
    let descriptionField : String?
    let groupingKey : String?
    let id : Int?
    let imgUrl : String?
    let name : String?
    let promotionalVideo : String?
    let promotionalVideoSize : String?
    let showDifficulties : Int?
    let showInSearch : Int?
    let showOnCategories : Int?
    let sortingKey : Int?
    let updatedAt : String?
    
    var completeImageUrlAsURL: URL? {
        imgUrl.map { WebAPI.imageBase.appendingPathComponent($0)}
    }
    
    var completeImageUrlAsString: String {
         if ((imgUrl) != nil) {
            return "https://nrg.scdn5.secure.raxcdn.com/storage/" + imgUrl!
        } else {
            return  "https://cf.geekdo-images.com/thumb/img/sD_qvrzIbvfobJj0ZDAaq-TnQPs=/fit-in/200x150/pic2649952.jpg"
        }
    }
    
     
    init(category: CategoryDTO) {
        id = category.id
        createdAt = category.createdAt
        descriptionField = category.descriptionField
        groupingKey = category.groupingKey
        imgUrl = category.imgUrl
        name = category.name
        promotionalVideo = category.promotionalVideo
        promotionalVideoSize = category.promotionalVideoSize
        showDifficulties = category.showDifficulties
        showInSearch = category.showInSearch
        showOnCategories = category.showOnCategories
        sortingKey = category.sortingKey
        updatedAt = category.updatedAt
    }
}
