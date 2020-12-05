//
//  InstructorProfileView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct InstructorProfileView: View {
    
    @State private var showDetails = false
    var data : InstructorEntity
    //var instructorEntity: InstructorEntity
    
    var body: some View {
        VStack(){
            //Image(systemName: "person.crop.circle")
            //UrlImageView(urlString: WebAPI.jsonURL)
             
            data.completeAvatarURL.map { url in
                KFImage(url)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 5)
            }
            
            
            //instructorEntity.firstName ??
            let fullName: String = (data.firstName ?? "") + " " + (data.lastName ?? "")
            Text(fullName).font(.title)
            
            let publicDescription = data.publicDescription ?? ""
            let publicDescriptionSplited = String(publicDescription.prefix(35))
            VStack {
                if showDetails {
                    Text(publicDescription)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(alignment: .center)
                        .font(.system(size: 12))
                        .padding(15)
                } else {
                    ZStack {
                        Text(publicDescriptionSplited)
                            .font(.system(size: 12))
                        
                    }.padding(15)
                }
                
                Button(action: {
                    self.showDetails.toggle()
                }) {
                    if showDetails {
                        Text("hide")
                    } else {
                        Text("Show details")
                    }
                    
                }.foregroundColor(navyBlueColor)
                .padding(.vertical)
                .frame(width: 320)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lightGrayColor, lineWidth: 1)
                )
                
            }
            
            
        }
    }
}

