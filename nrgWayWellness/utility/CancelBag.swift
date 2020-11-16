//
//  CancelBag.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/17/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Combine

final class CancelBag {
    var subscriptions = Set<AnyCancellable>()
    
    func cancel() {
        subscriptions.forEach { $0.cancel() }
        subscriptions.removeAll()
    }
}

extension AnyCancellable {
    
    func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}
