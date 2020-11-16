//
//  OnboardingInteractor.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

struct OnboardingInteractor: OnboardingIntractable {
    
    let webRepository: OnboardingRepository
    
    init(webRepository: OnboardingRepository) {
        self.webRepository = webRepository
    }
    
    func load(image: LoadableSubject<UIImage>, url: URL?) {
        guard let url = url else {
            image.wrappedValue = .notRequested; return
        }
        let cancelBag = CancelBag()
        image.wrappedValue.setIsLoading(cancelBag: cancelBag)
        webRepository.load(imageURL: url, width: 300)
            .sinkToLoadable {
                image.wrappedValue = $0
            }
            .store(in: cancelBag)
    }
}
