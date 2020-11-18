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

            AppTabbedView()
            
        }
        
    }
}

struct AppTabbedView: View {

    @State private var selection = 0

    init() {
        UITabBar.appearance().backgroundColor = UIColor.blue
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName:"bookmark.circle.fill")
                    
                }
                .tag(0)
         
            SavedView()
                .tabItem {
                    Image(systemName: "bookmark")
                    //Text("saved")
                }
                .tag(1)
         
            WorkOutView()
                .tabItem {
                    Image(systemName: "dumbell")
                    //Text("WorkOut")
                }
                .tag(2)
         
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    //Text("Profile")
                }
                .tag(3)
        }
         
        .accentColor(.white)
         
    }
}
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
