//
//  ChallengeListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/22/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ChallengeListView: View {
    
    @Binding var show : Bool
    @Binding var id : Int
    @ObservedObject var viewModel = ChallengeViewModel()
    
    var body: some View {
        VStack(){
            
            HStack(){
                Button(action: {
                    
                    self.show.toggle()
                    
                }) {
                    Image("Back").renderingMode(.original)
                        .padding(8)
                }
                Spacer()
            }
            .padding(.leading,8)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            content.onAppear { self.viewModel.getChallengeVideos(id: self.id) }
            
            Spacer()
            
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
    
    private func list() -> some View {
        
        let y =
            VStack(){
                ScrollView(.vertical){
                    VStack(){
                         
                        SpecificCategoryView(data: viewModel.specificCategory!)
                        
                        InstructorVideoListView(instructorVideos: viewModel.challengeVideos)
                        
                    }
                }
            }
            .padding(15)
        
        return y
    }
    
    private func shimmerList() -> some View {
        
        let y =
            VStack(){
                ScrollView(.vertical){
                    VStack(){
                         
                        ShimmerSpecificCategoryView()
                        
                        ShimmerInstructorVideoListView()
                        
                    }
                }
            }
            .padding(15)
        
        return y
    }
    
}




