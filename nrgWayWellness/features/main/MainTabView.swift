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
        //Home()
        
    }
}

struct Home : View {
    @State var modelData = ModelView()
    @State var selectedTab = "Home"
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View{
        
        VStack(){
            
            GeometryReader{_ in
                
                ZStack{
                    HomeView()
                    .opacity(selectedTab == "Home" ? 1 : 0)
                    
                    SavedView()
                        .opacity(selectedTab == "Restaurants" ? 1 : 0)
                    
                    WorkOutView()
                        .opacity(selectedTab == "Orders" ? 1 : 0)
                    
                    ProfileView()
                        .opacity(selectedTab == "Rewards" ? 1 : 0)
                }
            }
            .onChangeBackwardsCompatible(of: selectedTab) { (newIndex) in
                print("Do something with \(newIndex)")
                switch(selectedTab){

                case "Restaurants": if
                    !modelData.isRestaurantLoad{modelData.loadRestaurant()}
                case "Orders": if !modelData.isOrderLoad{modelData.loadOrders()}
                case "Rewards": if !modelData.isRewardLoad{modelData.loadReward()}
                default: ()
                }
            }
             
            // TabView...
            
            HStack(spacing: 0){
                
                ForEach(tabs,id: \.self){tab in
                    
                    TabButton(title: tab, selectedTab: $selectedTab)
                    
                    if tab != tabs.last{
                        Spacer(minLength: 0)
                    }
                }
            }
            // for iphone like 8 and SE
            .padding(.bottom,edges!.bottom == 0 ? 15 : edges!.bottom)
            .background(Color.blue)
        }
         
        .background(Color.black.opacity(0.06))
    }
}

extension View {
    @ViewBuilder func onChangeBackwardsCompatible<T: Equatable>(of value: T, perform completion: @escaping (T) -> Void) -> some View {
        if #available(iOS 14.0, *) {
            self.onChange(of: value, perform: completion)
        } else {
            self.onReceive([value].publisher.first()) { (value) in
                completion(value)
            }
        }
    }
}

// Tab Button...

struct TabButton : View {
    
    var title : String
    @Binding var selectedTab : String
     
    var body: some View{
        
        Button(action: {
            withAnimation{selectedTab = title}
        }) {
            
            VStack(){
                
                VStack{
                    Image(title)
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(selectedTab == title ? Color.blue : Color.black.opacity(0.2))
                        .frame(width: 24, height: 24)
                    
                    Text(title)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black.opacity(selectedTab == title ? 0.6 : 0.2))
                    
                    
                    TabButtonCustomShape()
                        .fill(Color.clear)
                        .frame(width: 45, height: 6)
                    
                    if selectedTab == title{
                        
                        TabButtonCustomShape()
                            .fill(Color.red)
                            .frame(width: 45, height: 6)
                             
                    }
                }
                 
                
                
            }
        }
    }
}

// Custom Shape..

struct TabButtonCustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 10, height: 10))
        
        return Path(path.cgPath)
    }
}


class ModelView : ObservableObject{
    
    @Published var isOrderLoad = false
    @Published var isRestaurantLoad = false
    @Published var isRewardLoad = false
    
    init() {
        
        // load initial data
        print("Home Data Loaded")
    }
    
    func loadOrders(){
        
        print("order Loaded")
        isOrderLoad = true
    }
    
    func loadRestaurant(){
        
        print("Restaurant Loaded")
        isRestaurantLoad = true
    }
    
    func loadReward(){
        
        print("reward Loaded")
        isRewardLoad = true
    }
}

////
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
