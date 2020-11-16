//
//  NavigationConfigurator.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: Context) -> UIViewController {
        
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}
