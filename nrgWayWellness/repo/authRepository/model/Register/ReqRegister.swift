//
//  ReqRegister.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ReqRegister : Codable {

        let code : String?
        let difficultyLevel : String?
        let email : String?
        let firstName : String?
        let lastName : String?
        let password : String?
        let passwordConfirm : String?
        let phone : String?

        enum CodingKeys: String, CodingKey {
                case code = "code"
                case difficultyLevel = "difficulty_level"
                case email = "email"
                case firstName = "first_name"
                case lastName = "last_name"
                case password = "password"
                case passwordConfirm = "password_confirm"
                case phone = "phone"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                code = try values.decodeIfPresent(String.self, forKey: .code)
                difficultyLevel = try values.decodeIfPresent(String.self, forKey: .difficultyLevel)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
                lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
                password = try values.decodeIfPresent(String.self, forKey: .password)
                passwordConfirm = try values.decodeIfPresent(String.self, forKey: .passwordConfirm)
                phone = try values.decodeIfPresent(String.self, forKey: .phone)
        }

}
