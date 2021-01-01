//
//  FavoriteVideoListEmptyView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct FavoriteVideoListEmptyView: View {
    var center = (UIScreen.main.bounds.width / 2) + 110
   
    var body : some View{
        
        VStack {
            Spacer()
            ZStack(alignment: .bottom){
                
                ZStack(alignment: .center) {
                    ZStack() {
                        //cardview
                        ZStack{
                            
                            Color.black.opacity(0.09)
                            Color.white
                                .mask(
                                    Rectangle()
                                        .fill(
                                            LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                                        )
                                        .rotationEffect(.init(degrees: 70))
                                        .offset(x: false ? center : -center)
                                )
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    .cornerRadius(5)
                    .aspectRatio(3/2, contentMode: .fit)
                    
                    
                    Text("There is no bookmark video to show")
                        .font(.body)
                        .foregroundColor(grayaeaeaeColor)
                     
                }
                 
                
                Image(systemName: "bookmark.slash")
                    .resizable()
                    .foregroundColor(grayaeaeaeColor)
                    .frame(width: 60, height: 60, alignment: .bottom)
                    .padding(.bottom, -30)
                
            }
            .padding(36)
            .padding(.trailing, 16)
            .padding(.top, 8)
            .padding(.bottom, 8)
            Spacer()
        }
        
        
        
    }
}

struct FavoriteVideoListEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteVideoListEmptyView()
    }
}
