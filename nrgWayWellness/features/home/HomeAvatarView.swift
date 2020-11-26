//
//  HomeAvatarView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/6/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct HomeAvatarView: View {
    var body: some View {
        HStack(spacing: 12){
            
            Spacer()
            
            Button(action: {
                
            }) {
                
                Image(systemName:"person.circle")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 1)
                    .padding(10)
            }
        }
    }
}

struct HomeAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAvatarView()
    }
}
