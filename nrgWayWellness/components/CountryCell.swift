//
//  CountryCell.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/17/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CountryCell: View {
    
    let country: Country
    @Environment(\.locale) var locale: Locale
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(country.name(locale: locale))
                .font(.title)
            Text("Population \(country.population)")
                .font(.caption)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
    }
}

 
struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: Country.mockedData[0])
            .previewLayout(.fixed(width: 375, height: 60))
    }
} 
