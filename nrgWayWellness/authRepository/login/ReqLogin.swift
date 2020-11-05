//
//  ReqLogin.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ReqLogin : Codable {

        let email : String?
        let password : String?
        let remenmber : Bool?

        enum CodingKeys: String, CodingKey {
                case email = "email"
                case password = "password"
                case remenmber = "remenmber"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                password = try values.decodeIfPresent(String.self, forKey: .password)
                remenmber = try values.decodeIfPresent(Bool.self, forKey: .remenmber)
        }

}
