//
//  MoviesAPI.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation
import Combine

enum MoviesAPI {
    static let imageBase = URL(string: "https://nrg.scdn5.secure.raxcdn.com/")!
    
    private static let base = URL(string: "https://app.nrgway.com/api/v1/")!
     
    private static let bearer = "Bearer "
    private static let token = bearer + "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiODY1Y2E0NDRkNjlmNGI5OTdiYjJiZjkyMjAwNGYyZGQ5YzYwNDhmMThhNjZjMGIyOTBhMjVmOGRhZDE5Yjg0Y2RjMDliY2U3ZjEzZGJiMGUiLCJpYXQiOjE2MDY0Mjc1MTksIm5iZiI6MTYwNjQyNzUxOSwiZXhwIjoxNjM3OTYzNTE5LCJzdWIiOiIxNjgiLCJzY29wZXMiOltdfQ.zE7vn8Ig4FoIN-sDG52Uvd4_c37fgWnoR2c2naMVf7JoVotMgSIhCujwhI3yGzp3JxnIxaNuFzscYRtfWGZq1jClsRQcbj7uwA8-vpaXhZYDKrq6jJK9J908dR6Uks6-NPsFaqdFaYyvAO07v6qsN8W5H5vnmFENHALKnODxl-3ojW4IagmtpWKRZIcYSOC5Eq0qci7iWtHxFIadxnHGsv-w3DOaQPb0rMH8uNeJX7Vk7a96XwXZMLb8RGhPGmWcl1VudUU5ln5INxiKQO32weM-eZML_IM2pCf3gedCJaS8vq7cZ7RbOIH7_igXoJjcMQDX4bscaUsWmuKlZgINFHmJP-IYNxKFw6zD4N_pinH5kCYYrJXOKT8oFbROTSPRqNehI4LZMyxtqtFIGfsK7MXIkx4zTQK-OYANaGNdDU0_MmVAWFWPo6gl_mEB5RcFY3W0QOC-r6G-YK2dVCxsJTc-c2QQeTwVnQJwIJDTU3u_mrYKo0XyQ1TBYhtRbB2LvfsfnokpsFQD30rhiBtmeoWPxjmU3p2AAHoFpaN0bAmnx8tmiHo-cfnvLOkBqfxys3UEPkwj0GA52R6oDVp4SoF_jk2Jx8s8wgwwdzCZbmkzLYxbRmwmPVF5Z9BTz59lf5UNNo9FN0Bv1PqS5FT7UkvA46qdno5Tj4fqaDn10n0"
    
    private static let agent = Agent()
    
    static func subscriberGetInfo() -> AnyPublisher<ResGetInfo, Error> {
        var request = URLComponents(url: base.appendingPathComponent("getInfo"), resolvingAgainstBaseURL: true)?
            .request
        
        request?.httpMethod = "GET"
        request?.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request?.setValue("Authorization", forHTTPHeaderField: token)
        return agent.run(request!)
    }
    
    static func movieDetail(id: Int) -> AnyPublisher<MovieDetailDTO, Error> {
        let request = URLComponents(url: base.appendingPathComponent("movie/\(id)"), resolvingAgainstBaseURL: true)?
            .addingApiAuthorizationToken(token)
            .request
        return agent.run(request!)
    }
}

private extension URLComponents {
    func addingApiAuthorizationToken(_ token: String) -> URLComponents {
        let headers = ["Authorization": token]
//        urlComponents?.queryItems = queryItems
//
//        var request = URLRequest(url: (urlComponents?.url)!)
//        request.httpMethod = "GET"
//
//        for (key, value) in headers {
//            request.setValue(value, forHTTPHeaderField: key)
//        }

        var copy = self
        copy.queryItems = [URLQueryItem(name: "Authorization", value: token)]
        return copy
    }
    
    var request: URLRequest? {
        url.map { URLRequest.init(url: $0) }
    }
}

// MARK: - DTOs

struct MovieDTO: Codable {
    let id: Int
    let title: String
    let poster_path: String?
    
    var poster: URL? { poster_path.map { MoviesAPI.imageBase.appendingPathComponent($0) } }
}

struct MovieDetailDTO: Codable {
    let id: Int
    let title: String
    let overview: String?
    let poster_path: String?
    let vote_average: Double?
    let genres: [GenreDTO]
    let release_date: String?
    let runtime: Int?
    let spoken_languages: [LanguageDTO]
    
    var poster: URL? { poster_path.map { MoviesAPI.imageBase.appendingPathComponent($0) } }
    
    struct GenreDTO: Codable {
        let id: Int
        let name: String
    }
    
    struct LanguageDTO: Codable {
        let name: String
    }
}

struct PageDTO<T: Codable>: Codable {
    let page: Int?
    let total_results: Int?
    let total_pages: Int?
    let results: [T]
}

