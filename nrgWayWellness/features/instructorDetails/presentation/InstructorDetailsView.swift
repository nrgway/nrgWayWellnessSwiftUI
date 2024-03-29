//
//  InstructorDetailsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InstructorDetailsView: View {
    @Binding var show : Bool
    
    @ObservedObject var viewModel: InstructorDetailsViewModel
    var data: InstructorEntity
    
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
            
            content.onAppear { self.viewModel.send(event: .onAppear) }
            
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
            
        case .instructorMoviesloaded(let instructorVideos):
            return list(of: instructorVideos).eraseToAnyView()
        }
    }
    
    private func list(of instructorVideos: [InstructorVideoEntity]) -> some View {
        let y =
            VStack(){
                ScrollView(.vertical){
                    
                    
                    VStack(){
                        
                        InstructorProfileView(data: data)
                        
                        Spacer()
                        
                        InstructorVideoListView(instructorVideos: instructorVideos)
                        
                    }
                }
                
                
            }
        
        return y
    }
    
    private func  shimmerList() -> some View {
        let y =
            VStack(){
                ScrollView(.vertical){
                    
                    
                    VStack(){
                        
                        ShimmerInstructorProfileView()
                        
                        Spacer()
                        
                        ShimmerInstructorVideoListView()
                        
                    }
                }
                
                
            }
        
        return y
    }
    
    
    
}






