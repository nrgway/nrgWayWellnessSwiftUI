//
//  BreweryView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct BreweryView: View {
    private let brewery: Brewery
    init(brewery: Brewery) {
        self.brewery = brewery
    }
    
    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: "21")!)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 15) {
                Text(brewery.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text("\(brewery.city) - \(brewery.street)")
                    .font(.system(size: 14))
            }
        }
    }
}
