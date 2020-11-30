//
//  ReqAuthResetPassword.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ReqAuthResetPassword : Codable {

        let email : String?
        let password : String?
        let passwordConfirmation : String?
        let token : String?

        enum CodingKeys: String, CodingKey {
                case email = "email"
                case password = "password"
                case passwordConfirmation = "password_confirmation"
                case token = "token"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                password = try values.decodeIfPresent(String.self, forKey: .password)
                passwordConfirmation = try values.decodeIfPresent(String.self, forKey: .passwordConfirmation)
                token = try values.decodeIfPresent(String.self, forKey: .token)
        }

}
