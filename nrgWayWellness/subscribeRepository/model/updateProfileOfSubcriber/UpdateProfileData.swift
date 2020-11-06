//
//  UpdateProfileData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct UpdateProfileData: Codable {

        let avatar : String?
        let email : String?
        let firstName : String?
        let lastName : String?
        let phone : String?
        let registrationDate : String?

        enum CodingKeys: String, CodingKey {
                case avatar = "avatar"
                case email = "email"
                case firstName = "first_name"
                case lastName = "last_name"
                case phone = "phone"
                case registrationDate = "registration_date"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
                lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
                phone = try values.decodeIfPresent(String.self, forKey: .phone)
                registrationDate = try values.decodeIfPresent(String.self, forKey: .registrationDate)
        }

}
