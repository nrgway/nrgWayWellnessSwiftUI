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
        ZStack(alignment: .top) {


            TabbedView()
            //AppTabbedView()
                   ZStack() {


                    //.background(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))



                    Rectangle()
                     .foregroundColor(navyBlueColor.opacity(0.0))
                     .background(CustomToolBarView())
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 20)
                   }


        }
        
        //TabbedView()
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


struct TabbedView : View {
    
    @State var tab = 0
    var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom
    
    var body: some View{
        
        ZStack (alignment: .bottom){
            
            Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
            
            if(tab == 0) {
                HomeView(viewModel: HomeViewModel())
            } else if (tab == 1) {
                FavoriteVideosView()
            } else if (tab == 2) {
                WorkOutView(viewModel: WorkOutViewModel())
            } else   {
                ProfileView(viewModel: ProfileViewModel())
            }
            
            
            VStack{
                HStack{
                    Button(action: {
                        self.tab = 0
                    }) {
                        Image(systemName: "house.fill")
                            .font(.title)
                            .foregroundColor(self.tab == 0 ? .white : Color.white.opacity(0.25))
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.tab = 1
                        
                    }) {
                        
                        Image(systemName: "wand.and.stars.inverse")
                            .font(.title)
                             .foregroundColor(self.tab == 1 ? .white : Color.white.opacity(0.25))
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.tab = 2
                        
                    }) {
                        
                        Image(systemName: "bookmark")
                            .font(.title)
                            .foregroundColor(self.tab == 2 ? .white : Color.white.opacity(0.25))
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.tab = 3
                        
                    }) {
                        
                        Image(systemName: "person")
                            .font(.title)
                            .foregroundColor(self.tab == 3 ? .white : Color.white.opacity(0.25))
                        
                    }
                }
                .padding(.horizontal, 30)
                .padding(.top,25)
                // for no safearea phones padding will be 15 at bottom...
                .padding(.bottom, self.bottom! == 0 ? 15 : self.bottom! + 10)
                .background(navyBlueColor)
                .clipShape(CShape())
            }
            .frame(
                alignment: .bottomLeading
            )
            .edgesIgnoringSafeArea(.bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
 
struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
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
            HomeView(viewModel: HomeViewModel())
                .tabItem {
                    Image(systemName:"bookmark.circle.fill")

                }
                .tag(0)
         
            FavoriteVideosView()
                .tabItem {
                    Image(systemName: "bookmark")
                    //Text("saved")
                }
                .tag(1)
         
            WorkOutView(viewModel: WorkOutViewModel())
                .tabItem {
                    Image(systemName: "bolt.heart.fill")
                    //Text("WorkOut")
                }
                .tag(2)
         
            ProfileView(viewModel: ProfileViewModel())
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    //Text("Profile")
                }
                .tag(3)
        }
        
        .accentColor(.red)
         
    }
}



struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
