//
//  AchivementsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/26/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AchivementsView: View {
    @Binding var show : Bool
    @ObservedObject var viewModel = AchivementViewModel()
     
    private let columnCount: Int = 2
    
    var body: some View {
        content.onAppear {
            self.viewModel.getInstructors()
        }
    }
    
    private func list() -> some View {
        VStack(){
            VStack(){
                 
                HStack(){
                    
//                    Button(action: {
//                        self.show.toggle()
//
//                    }) {
//                        Image("Back")
//                            .renderingMode(.original)
//                            .padding(8)
//                    }
//
//                    Spacer()

                }
                .padding(.leading,8)
                .navigationBarTitle("")
                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
                VStack(){
                    Spacer(minLength: 30)
                    Text("Achievements").font(.title)
                    AchivementList(instructorVideos: viewModel.instructors)
                    
                }
            }
            
            
            
           
                
//            NavigationView{
//
//                VStack(){
//                    Text("Achievements").font(.title)
//                    AchivementList()
//
//                }
//                //.navigationBarBackButtonHidden(false)
//                .navigationBarTitle("")
//                //.navigationBarHidden(true)
//
//            }
            
            
            
        }
        
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return LoadingView().eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .loaded:
            return list().eraseToAnyView()
        }
    }
}

 

 
