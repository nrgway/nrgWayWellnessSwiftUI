//
//  Spinner.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import SwiftUI
import UIKit

struct Spinner: UIViewRepresentable {
    let isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: style)
        spinner.hidesWhenStopped = true
        return spinner
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
