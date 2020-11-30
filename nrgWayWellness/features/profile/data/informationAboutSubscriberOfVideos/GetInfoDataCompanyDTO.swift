//
//  GetInfoDataCompanyDTO.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/9/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

struct GetInfoDataCompanyDTO : Codable {

        let createdAt : String?
        let id : Int?
        let invitationCode : String?
        let logo : String?
        let name : String?
        let notes : String?
        let primaryContact : String?
        let primaryContactEmail : String?
        let primaryContactPhone : String?
        let statusId : Int?
        let updatedAt : String?

        enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case id = "id"
                case invitationCode = "invitation_code"
                case logo = "logo"
                case name = "name"
                case notes = "notes"
                case primaryContact = "primary_contact"
                case primaryContactEmail = "primary_contact_email"
                case primaryContactPhone = "primary_contact_phone"
                case statusId = "status_id"
                case updatedAt = "updated_at"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                id = try values.decodeIfPresent(Int.self, forKey: .id)
                invitationCode = try values.decodeIfPresent(String.self, forKey: .invitationCode)
                logo = try values.decodeIfPresent(String.self, forKey: .logo)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                notes = try values.decodeIfPresent(String.self, forKey: .notes)
                primaryContact = try values.decodeIfPresent(String.self, forKey: .primaryContact)
                primaryContactEmail = try values.decodeIfPresent(String.self, forKey: .primaryContactEmail)
                primaryContactPhone = try values.decodeIfPresent(String.self, forKey: .primaryContactPhone)
                statusId = try values.decodeIfPresent(Int.self, forKey: .statusId)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        }

}

