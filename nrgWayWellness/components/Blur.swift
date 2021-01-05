//
//  Blur.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/16/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
 
struct Blur: UIViewRepresentable {
    
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

public let styles : [(description: String, style: UIBlurEffect.Style)] = [
        (description: "ultra thin", style: .systemUltraThinMaterial),
        (description: "thin", style: .systemThinMaterial),
        (description: "normal", style: .systemMaterial),
        (description: "thick", style: .systemThickMaterial),
        (description: "chrome", style: .systemChromeMaterial)
    ]
