//
//  MainTabView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
     
    @State private var selection = 0
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
             
                SavedView()
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("saved")
                    }
                    .tag(1)
             
                WorkOutView()
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("WorkOut")
                    }
                    .tag(2)
             
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(3)
            }
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
            .accentColor(.red)
         
            Button(action: {
                selection = (selection + 1) % 4
            }) {
                Text("Next")
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10.0)
                    .padding()
         
            }
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
