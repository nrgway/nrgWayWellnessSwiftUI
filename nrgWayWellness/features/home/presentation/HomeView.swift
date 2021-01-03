//
//  HomeView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
 
struct HomeView : View {
    //@ObservedObject var viewModel: HomeViewModel
    @ObservedObject var viewModel = HomeViewModel()
    //@State var instructors : [InstructorEntity]
    
    var body: some View {
        content.onAppear {
            self.viewModel.getInstructors()
        }
    }
    
    private func list() -> some View {
        
        VStack(){
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(){
                    HomeAvatarView()
                   
                    WorkoutsView(data: viewModel.formulas)
                    
                    NGTInstructorsView(data: viewModel.instructors)
                    
                    LatestVideosView(data: viewModel.videos)
                       
                    
                    ChallengesView(data: viewModel.categories).onAppear {}
                    
                }
                //.background(Color.white)
            }
            
             
        }
         
    }
    
    private func shimmerList() -> some View {
        
        VStack(){
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(){
                    Spacer(minLength: 50)
                    ShimmerWorkoutsView()
                    
                    ShimmerNGTInstructorsView()
                    
                    Spacer(minLength: 25)
                    ShimmerLatestVideosView()
                    
                    ShimmerLatestVideosView()
                    
                }
            }
            
             
        }
        
         
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return shimmerList().eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .loaded:
            return list().eraseToAnyView()
        }
    }
     
    
}


 

//var body : some View{
//    VStack(){
//        CustomToolBarView()
//        NavigationView{
//
//            VStack(){
//                ScrollView(.vertical, showsIndicators: false) {
//
//                    VStack(){
//                        HomeAvatarView()
//
//                        WorkoutsView()
//
//                        NGTInstructorsView()
//
//                        LatestVideosView()
//
//                        ChallengesView()
//                    }
//                }
//                .padding(.horizontal)
//
//            }
//            .navigationBarBackButtonHidden(false)
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//
//        }
//
//    }
//
//
//}
