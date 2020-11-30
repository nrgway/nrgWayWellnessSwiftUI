//
//  ResLogin.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResLogin : Codable {

        let accessToken : String?
        let expiresAt : String?
        let status : Bool?
        let tokenType : String?

        enum CodingKeys: String, CodingKey {
                case accessToken = "access_token"
                case expiresAt = "expires_at"
                case status = "status"
                case tokenType = "token_type"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                accessToken = try values.decodeIfPresent(String.self, forKey: .accessToken)
                expiresAt = try values.decodeIfPresent(String.self, forKey: .expiresAt)
                status = try values.decodeIfPresent(Bool.self, forKey: .status)
                tokenType = try values.decodeIfPresent(String.self, forKey: .tokenType)
        }

}
