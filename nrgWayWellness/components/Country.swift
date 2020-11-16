//
//  Country.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/17/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct Country: Codable, Equatable {
    let name: String
    let translations: [String: String?]
    let population: Int
    let flag: URL?
    let alpha3Code: Code
    
    typealias Code = String
}

extension Country {
    struct Details: Codable, Equatable {
        let capital: String
        let currencies: [Currency]
        let neighbors: [Country]
    }
}

extension Country.Details {
    struct Intermediate: Codable, Equatable {
        let capital: String
        let currencies: [Country.Currency]
        let borders: [String]
    }
}

extension Country {
    struct Currency: Codable, Equatable {
        let code: String
        let symbol: String?
        let name: String
    }
}

// MARK: - Helpers

extension Country: Identifiable {
    var id: String { alpha3Code }
}

extension Country.Currency: Identifiable {
    var id: String { code }
}

extension Country {
    func name(locale: Locale) -> String {
        let localeId = locale.shortIdentifier
        if let value = translations[localeId], let localizedName = value {
            return localizedName
        }
        return name
    }
}

extension Locale {
    static var backendDefault: Locale {
        return Locale(identifier: "en")
    }
    
    var shortIdentifier: String {
        return String(identifier.prefix(2))
    }
}

