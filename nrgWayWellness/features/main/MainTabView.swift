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
         
        AppTabbedView()
        
        
    }
}

struct Home : View {
    
     
    @State var tab = 0
     
    
    var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom
    
    var body: some View{
        
        HStack{
            
            Button(action: {
                
                self.tab = 0
                
            }) {
                
                Image(systemName: "suit.heart.fill")
                    .font(.title)
                    .foregroundColor(self.tab == 0 ? .black : Color.black.opacity(0.25))
                
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                self.tab = 1
                
            }) {
                
                Image(systemName: "safari")
                    .font(.title)
                     .foregroundColor(self.tab == 1 ? .black : Color.black.opacity(0.25))
                
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                self.tab = 2
                
            }) {
                
                Image(systemName: "person.circle")
                    .font(.title)
                    .foregroundColor(self.tab == 2 ? .black : Color.black.opacity(0.25))
                
            }
        }
        .padding(.horizontal, 30)
        .padding(.top,25)
        // for no safearea phones padding will be 15 at bottom...
        .padding(.bottom, self.bottom! == 0 ? 15 : self.bottom! + 10)
        .background(navyBlueColor)
        .clipShape(CShape())
        //.edgesIgnoringSafeArea(.bottom)
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
        
        .accentColor(.red)
         
    }
}

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
