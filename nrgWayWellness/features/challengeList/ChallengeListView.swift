//
//  ChallengeListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ChallengeListView: View {
    @Binding var show : Bool
    @ObservedObject var viewModel = BreweriesViewModel()
    
    var body: some View {
        
        VStack() {
            VStack() {
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
                
                VStack(){
                    Text("Yoga Challenges").font(.title)
                    //AchivementList()
                 
                    
                    List(viewModel.breweries, id: \.self) {
                        BreweryView(brewery: $0)
                    }.onAppear {
                            self.viewModel.fetchBreweries()
                    }
                }
            }
            
        }
        
    }
}

 
