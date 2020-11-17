//
//  ProfileView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var pushActive = false
    var body: some View {
        NavigationView{
         
            VStack(spacing: 15){
                
                AvatarIntroView().padding(.bottom, 4)
                Seperator()
            
                PersonalInformation()
                
                AchivementCard()
            }.navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
        }
 
    }
}
 

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
