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
        NavigationView {
            list()
                //.navigationBarTitle("Trending Movies")
                .navigationBarBackButtonHidden(false)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        
    }
    
    private func list() -> some View {
        
        VStack(){
            
            NavigationView{
             
                VStack(){
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack(){
                            HomeAvatarView()
                           
                            WorkoutsView()
                            
                            NGTInstructorsView(data: viewModel.instructors)
                                .onAppear {
                                self.viewModel.getInstructors()
                            }
                            
                            LatestVideosView(data: viewModel.videos)
                            
                            ChallengesView(data: viewModel.categories)
                                .onAppear {
                                 
                            }
                        }
                    }
                    .padding(.horizontal)
                     
                }
                .navigationBarBackButtonHidden(false)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
            }
        }
         
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return Spinner(isAnimating: true, style: .large).eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .instructorsLoaded(let formulas):
            return list(of: formulas).eraseToAnyView()
        }
    }
    
    private func list(of instructorlist: [InstructorEntity]) -> some View {
        
        VStack(){
            
            NavigationView{
             
                VStack(){
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack(){
                            HomeAvatarView()
                           
                            WorkoutsView()
                            
                            NGTInstructorsView(data: instructorlist)
                            
                            //LatestVideosView(data: <#[LatestVideoEntity]#>)
                            
                            //ChallengesView(data: instructorlist)
                        }
                    }
                    .padding(.horizontal)
                     
                }
                .navigationBarBackButtonHidden(false)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
            }
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
