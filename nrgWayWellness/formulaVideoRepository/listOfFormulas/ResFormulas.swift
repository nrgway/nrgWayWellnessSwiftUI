//
//  ResFormulas.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation

struct ResFormulas : Codable {

        let data : FormulaData?
        let status : Bool?

        enum CodingKeys: String, CodingKey {
                case data = "data"
                case status = "status"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                data = try FormulaData(from: decoder)
                status = try values.decodeIfPresent(Bool.self, forKey: .status)
        }

}

