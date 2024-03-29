//
//  FormulaEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct FormulaEntity: Identifiable {
    
    let cardioName : String?
    let createdAt : String?
    let descriptionField : String?
    let favoritesOnly : Int?
    let iconUrl : String?
    let id : Int?
    let imageUrl : String?
    let name : String?
    let randomize : Int?
    let sortOrder : Int?
    let stretchName : String?
    let updatedAt : String?
    let videoSize : String?
    let videoUrl : String?
    let workoutName : String?
    
    var completeAvatarURL: URL? {
        if ((imageUrl) != nil) {
            return  imageUrl.map { WebAPI.imageBase.appendingPathComponent($0) }
       } else {
           return URL(string: "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png")
       }
        
    }
    
    var completeAvatarAsString: String {
        return  "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"
//         if ((imageUrl) != nil) {
//            return "https://nrg.scdn5.secure.raxcdn.com/storage/" + imageUrl!
//        } else {
//            return  "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"
//        }
    }
    
    var completeVideoUrl: URL? {
        return URL(string: "https://nrg.scdn5.secure.raxcdn.com/storage/images/categories/5f4d8de328972.jpg")
//        if ((imageUrl) != nil) {
//            return  imageUrl.map { WebAPI.imageBase.appendingPathComponent($0) }
//       } else {
//           return URL(string: "https://nrg.scdn5.secure.raxcdn.com/storage/images/categories/5f4d8de328972.jpg")
//       }
        
    }
    
    init(formulaData: FormulaData) {
        
        cardioName = formulaData.cardioName
        createdAt = formulaData.createdAt
        descriptionField = formulaData.descriptionField
        favoritesOnly = formulaData.favoritesOnly
        iconUrl = formulaData.iconUrl
        id = formulaData.id
        imageUrl = formulaData.imageUrl
        name = formulaData.name
        
        randomize = formulaData.randomize
        sortOrder = formulaData.sortOrder
        stretchName = formulaData.stretchName
        updatedAt = formulaData.updatedAt
        videoSize = formulaData.videoSize
        videoUrl = formulaData.videoUrl
        workoutName = formulaData.workoutName
        
    }
     
}
