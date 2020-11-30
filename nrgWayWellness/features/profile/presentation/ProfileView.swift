//
//  ProfileView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    @State var pushActive = false
    
    private var spinner: Spinner { Spinner(isAnimating: true, style: .large) }
    
    var body: some View {
        content
            .onAppear { self.viewModel.send(event: .onAppear) }
    }
    
    private var content: some View {
        switch viewModel.state {
        
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return spinner.eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .loaded(let movie):
            return self.movie(movie).eraseToAnyView()
        }
        
    }
    private func movie(_ getInfoEntity: GetInfoEntity) -> some View {
        
        
        
        VStack(){
            CustomToolBarView()
            VStack(){
                
                
                NavigationView{

                    VStack(){

                        AvatarIntroView(getInfoEntity: getInfoEntity)
                            .padding(.bottom, 4)
                            .onAppear{
                              
                            }

                        Seperator()

                        PersonalInformation()

                        AchivementCard().onAppear{
                           
                            
                        }

                    }.navigationBarBackButtonHidden(true)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                }
                
                
            }
        }
       
        
        
       
    }
    
    
//    var body: some View {
//        NavigationView{
//
//            VStack(spacing: 15){
//
//                AvatarIntroView().padding(.bottom, 4)
//
//                Seperator()
//
//                PersonalInformation()
//
//                AchivementCard()
//
//            }.navigationBarBackButtonHidden(true)
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//
//        }
//
//    }
}
 

 
