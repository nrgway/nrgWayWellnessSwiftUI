//
//  CountriesInteractor.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/18/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

protocol CountriesInteractor {
    func refreshCountriesList() -> AnyPublisher<Void, Error>
    func load(countries: LoadableSubject<LazyList<Country>>, search: String, locale: Locale)
    func load(countryDetails: LoadableSubject<Country.Details>, country: Country)
}

struct RealCountriesInteractor: CountriesInteractor {
    
    let webRepository: CountriesWebRepository
    //let dbRepository: CountriesDBRepository
     
    init(webRepository: CountriesWebRepository ) {
        self.webRepository = webRepository
        //self.dbRepository = dbRepository
         
    }

    func load(countries: LoadableSubject<LazyList<Country>>, search: String, locale: Locale) {
        
        let cancelBag = CancelBag()
        countries.wrappedValue.setIsLoading(cancelBag: cancelBag)
        
         
    }
    
    func refreshCountriesList() -> AnyPublisher<Void, Error> {
        return Just<Void>.withErrorType(Error.self)
    }

    func load(countryDetails: LoadableSubject<Country.Details>, country: Country) {
       
    }
    
//    private func loadAndStoreCountryDetailsFromWeb(country: Country) -> AnyPublisher<Country.Details?, Error> {
//        return Just<Void>.withErrorType(Error.self)
//    }
    
    private var requestHoldBackTimeInterval: TimeInterval {
        return ProcessInfo.processInfo.isRunningTests ? 0 : 0.5
    }
}

struct StubCountriesInteractor: CountriesInteractor {
    
    func refreshCountriesList() -> AnyPublisher<Void, Error> {
        return Just<Void>.withErrorType(Error.self)
    }
    
    func load(countries: LoadableSubject<LazyList<Country>>, search: String, locale: Locale) {
    }
    
    func load(countryDetails: LoadableSubject<Country.Details>, country: Country) {
    }
}
