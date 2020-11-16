//
//  OnboardingRepository.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
 
import Combine
import UIKit

protocol OnboardingRepositioning: WebRepository {
    func load(imageURL: URL, width: Int) -> AnyPublisher<UIImage, Error>
}
