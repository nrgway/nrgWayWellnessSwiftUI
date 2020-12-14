//
//  SpecificVideoPlayerWithRelatedVideoView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct SpecificVideoPlayerWithRelatedVideoView: View {
    
    @Binding var show : Bool
    @ObservedObject var viewModel = SpecificVideoPlayerWithRelatedVideoViewModel()
    
    var body: some View {
        
        VStack(spacing : 0){
            
            HStack(spacing: 18){
                
                Button(action: {
                    
                    self.show.toggle()
                    
                }) {
                    
                    Image("Back").renderingMode(.original)
                }
                
                Spacer()
                 

            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .padding(15)
        
            //content.onAppear { self.viewModel.getVideo(id: 77) }
            content.onAppear { self.getVideo(id: 77) }
            
        }
        
        
       
    }
    
    func getVideo(id: Int)  {
        
        let task = URLSession.shared.dataTask(with: WebAPI.getVideoURLRequest(id: id)) { data, response, error in
            if let data = data {
                
                print("-----------------data-----------------")
                print("--------GET REQUEST RESPONSE START--------")
                print("Response Data:")
                print(String(data: data, encoding: .utf8) ?? "")
                print("--------GET REQUEST RESPONSE END--------")
                print("++++++++++++++++data+++++++++++++++++")
                
                let jsonDecoder = JSONDecoder()
                do {
                    let parsedJSON = try jsonDecoder.decode(ResSingleVideo.self, from: data)
                    print("-----------------parsedJSON-----------------")
                    print(parsedJSON)
                    print("++++++++++++++++parsedJSON+++++++++++++++++")
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
        
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return Spinner(isAnimating: true, style: .large).eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .loaded:
            return list().eraseToAnyView()
        }
    }
    
    
    private func list() -> some View {
        
        let y = VStack() {
            Text(viewModel.video?.title ?? /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            if((viewModel.video?.completeUrlHighAsURL) != nil) {
                VideoView(videoURL: (viewModel.video?.completeUrlHighAsURL)!)
                    .aspectRatio(3/2, contentMode: .fit)
            }
           
        }
             
        
        return y
    }
}

 
