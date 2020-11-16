//
//  ProfileView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(){
    
            Image("bird").frame(height: 300)
            CircleImageView().offset(y: -130).padding(.bottom, -130)
        
       VStack(alignment: .leading){
            Text("Ehtisham Khan ")
                .font(.title)
         HStack() {
                Text("   for tessssst")
                .font(.subheadline)
                Spacer()
                Text("Artificial Intelligence")
            }
     
        }.padding()
            
            
        SocialMediaListView()
    }.edgesIgnoringSafeArea(.top)
        //Text(" ProfileView")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
