//
//  GetInfoData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

struct GetInfoDataDTO : Codable {
    let avatar : String?
    let company : GetInfoDataCompanyDTO?
    let companyId : Int?
    let createdAt : String?
    let difficultyId : Int?
    let email : String?
    let emailVerifiedAt : String?
    let firstName : String?
    let id : Int?
    let lastName : String?
    let notes : String?
    let phone : String?
    let preferences : String?
    let registrationDate : String?
    let status : GetInfoDataStatusDTO?
    let statusId : Int?
    let updatedAt : String?
    
    enum CodingKeys: String, CodingKey {
        case avatar = "avatar"
        case company = "company"
        case companyId = "company_id"
        case createdAt = "created_at"
        case difficultyId = "difficulty_id"
        case email = "email"
        case emailVerifiedAt = "email_verified_at"
        case firstName = "first_name"
        case id = "id"
        case lastName = "last_name"
        case notes = "notes"
        case phone = "phone"
        case preferences = "preferences"
        case registrationDate = "registration_date"
        case status = "status"
        case statusId = "status_id"
        case updatedAt = "updated_at"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
        company = try GetInfoDataCompanyDTO(from: decoder)
        companyId = try values.decodeIfPresent(Int.self, forKey: .companyId)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        difficultyId = try values.decodeIfPresent(Int.self, forKey: .difficultyId)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        emailVerifiedAt = try values.decodeIfPresent(String.self, forKey: .emailVerifiedAt)
        firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
        notes = try values.decodeIfPresent(String.self, forKey: .notes)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        preferences = try values.decodeIfPresent(String.self, forKey: .preferences)
        registrationDate = try values.decodeIfPresent(String.self, forKey: .registrationDate)
        status = try GetInfoDataStatusDTO(from: decoder)
        statusId = try values.decodeIfPresent(Int.self, forKey: .statusId)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
    }
    
}
