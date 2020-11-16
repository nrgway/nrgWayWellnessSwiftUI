//
//  InteractorsContainer.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/18/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

extension DIContainer {
    struct Interactors {
        let countriesInteractor: CountriesInteractor
        let imagesInteractor: ImagesInteractor
        let userPermissionsInteractor: UserPermissionsInteractor
        
        let onboardingIntractable: OnboardingIntractable
        
        init(countriesInteractor: CountriesInteractor,
             imagesInteractor: ImagesInteractor,
             userPermissionsInteractor: UserPermissionsInteractor,
             onboardingIntractable: OnboardingIntractable) {
            self.countriesInteractor = countriesInteractor
            self.imagesInteractor = imagesInteractor
            self.userPermissionsInteractor = userPermissionsInteractor
            self.onboardingIntractable = onboardingIntractable
        }
        
        static var stub: Self {
            .init(countriesInteractor: StubCountriesInteractor(),
                  imagesInteractor: StubImagesInteractor(),
                  userPermissionsInteractor: StubUserPermissionsInteractor(),
                  onboardingIntractable: OnboardingInteractorFake() as! OnboardingIntractable)
        }
    }
}

