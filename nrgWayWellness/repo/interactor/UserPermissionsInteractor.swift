//
//  UserPermissionsInteractor.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/18/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation
import UserNotifications

enum Permission {
    case pushNotifications
}

extension Permission {
    enum Status: Equatable {
        case unknown
        case notRequested
        case granted
        case denied
    }
}

protocol UserPermissionsInteractor: class {
    func resolveStatus(for permission: Permission)
    func request(permission: Permission)
}

// MARK: - RealUserPermissionsInteractor

final class RealUserPermissionsInteractor: UserPermissionsInteractor {
    func resolveStatus(for permission: Permission) {
        
    }
    
    func request(permission: Permission) {
        
    }
    
    
    
    private let openAppSettings: () -> Void
    
    init(  openAppSettings: @escaping () -> Void) {
         
        self.openAppSettings = openAppSettings
    }
    
   
}
    
// MARK: - Push Notifications

extension UNAuthorizationStatus {
    var map: Permission.Status {
        switch self {
        case .denied: return .denied
        case .authorized: return .granted
        case .notDetermined, .provisional: return .notRequested
        @unknown default: return .notRequested
        }
    }
}

private extension RealUserPermissionsInteractor {
    
    func pushNotificationsPermissionStatus(_ resolve: @escaping (Permission.Status) -> Void) {
        let center = UNUserNotificationCenter.current()
        center.getNotificationSettings { settings in
            DispatchQueue.main.async {
                resolve(settings.authorizationStatus.map)
            }
        }
    }
    
     
}

// MARK: -

final class StubUserPermissionsInteractor: UserPermissionsInteractor {
    
    func resolveStatus(for permission: Permission) {
    }
    func request(permission: Permission) {
    }
}

