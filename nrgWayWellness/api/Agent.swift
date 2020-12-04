//
//  Agent.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation
import Combine

import Alamofire

struct Agent {
    
    
    func run<T: Decodable>(_ request: URLRequest) -> AnyPublisher<T, Error> {
        let bearer1 = "Bearer "
        let token1 = bearer1 + "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiODY1Y2E0NDRkNjlmNGI5OTdiYjJiZjkyMjAwNGYyZGQ5YzYwNDhmMThhNjZjMGIyOTBhMjVmOGRhZDE5Yjg0Y2RjMDliY2U3ZjEzZGJiMGUiLCJpYXQiOjE2MDY0Mjc1MTksIm5iZiI6MTYwNjQyNzUxOSwiZXhwIjoxNjM3OTYzNTE5LCJzdWIiOiIxNjgiLCJzY29wZXMiOltdfQ.zE7vn8Ig4FoIN-sDG52Uvd4_c37fgWnoR2c2naMVf7JoVotMgSIhCujwhI3yGzp3JxnIxaNuFzscYRtfWGZq1jClsRQcbj7uwA8-vpaXhZYDKrq6jJK9J908dR6Uks6-NPsFaqdFaYyvAO07v6qsN8W5H5vnmFENHALKnODxl-3ojW4IagmtpWKRZIcYSOC5Eq0qci7iWtHxFIadxnHGsv-w3DOaQPb0rMH8uNeJX7Vk7a96XwXZMLb8RGhPGmWcl1VudUU5ln5INxiKQO32weM-eZML_IM2pCf3gedCJaS8vq7cZ7RbOIH7_igXoJjcMQDX4bscaUsWmuKlZgINFHmJP-IYNxKFw6zD4N_pinH5kCYYrJXOKT8oFbROTSPRqNehI4LZMyxtqtFIGfsK7MXIkx4zTQK-OYANaGNdDU0_MmVAWFWPo6gl_mEB5RcFY3W0QOC-r6G-YK2dVCxsJTc-c2QQeTwVnQJwIJDTU3u_mrYKo0XyQ1TBYhtRbB2LvfsfnokpsFQD30rhiBtmeoWPxjmU3p2AAHoFpaN0bAmnx8tmiHo-cfnvLOkBqfxys3UEPkwj0GA52R6oDVp4SoF_jk2Jx8s8wgwwdzCZbmkzLYxbRmwmPVF5Z9BTz59lf5UNNo9FN0Bv1PqS5FT7UkvA46qdno5Tj4fqaDn10n0"
        
        let headers: HTTPHeaders = [
            "Authorization": token1 ,
        "Accept": "application/json"
            ]
        
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .map { $0.data }
            .handleEvents(receiveOutput: {                print(NSString(data: $0, encoding: String.Encoding.utf8.rawValue)!)
                //print("تستتتت کنیم ببینم چیسه")
            })
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
