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
            return Spinner(isAnimating: true, style: .large).eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .instructorMoviesloaded(let instructorVideos):
            return list(of: instructorVideos).eraseToAnyView()
        }
    }
    
    private func list(of instructorVideos: [InstructorVideoEntity]) -> some View {
        //        let x =  List(instructorVideos) { formula in
        //            NavigationLink(
        //                destination: VideoPlayerView(),
        //                //destination: MovieDetailView(viewModel: MovieDetailViewModel(movieID: movie.id)),
        //                label: { FormulaCardView(formula: formula) }
        //            )
        //        }
        
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
    
    
    //    struct InstructorDetailsList: View {
    //        let instructorVideos: [InstructorVideoEntity]
    //
    //        init(data: [InstructorVideoEntity]) {
    //            instructorVideos = data
    //        }
    //
    //        var body: some View {
    //            VStack(){
    //                VStack(){
    //                    HStack(){
    //
    //                        Button(action: {
    //
    //                            self.show.toggle()
    //
    //                        }) {
    //
    //                            Image("Back").renderingMode(.original)
    //                                .padding(8)
    //                        }
    //
    //                        Spacer()
    //
    //                    }
    //                    .padding(.leading,8)
    //                    .navigationBarTitle("")
    //                    .navigationBarHidden(true)
    //                    .navigationBarBackButtonHidden(true)
    //
    //                    VStack(){
    //
    //                        InstructorProfileView(data: data)
    //
    //                        Spacer()
    //
    //                        InstructorVideoListView()
    //
    //
    //                    }
    //                }
    //
    //
    //            }
    //        }
    //    }
    
    
}






