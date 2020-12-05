//
//  NGTInstructorsCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import Alamofire
import KingfisherSwiftUI
struct NGTInstructorsCellView : View {
    
    var instructor : InstructorEntity
    @State var show = false
    @State var fullName: String = ""
    @State var avatarUrl: String = ""
    @Environment(\.imageCache) var cache: ImageCache
    
    init(data : InstructorEntity) {
        instructor = data
        fullName = (data.firstName ?? "") + " " + (data.lastName ?? "")
    }
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: InstructorDetailsView(show: self.$show, viewModel: InstructorDetailsViewModel(),
                                                              data: instructor), isActive: self.$show) {
                Text("")
            }
            
            VStack(){
                
//                instructor.completeAvatarURL.map { url in
//
//                    AsyncImage(
//                        url: url,
//                        cache: cache,
//                        placeholder: spinner,
//                        configuration: { $0.resizable().renderingMode(.original) }
//                    )
//                }
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 70, height: 70)
//                .cornerRadius(5)
//                .shadow(radius: 5)
                
                instructor.completeAvatarURL.map { url in
                    KFImage(url)
                        .resizable()
                        .frame(width:70, height:70)
                        .scaledToFit()
                        .cornerRadius(22)
                }
                
                
                Text((instructor.firstName ?? "") )
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 25)
                //.padding(2)
                
                
            }.onTapGesture {
                self.show.toggle()
            }.onAppear() {
                
                print(instructor.avatar)
                print(instructor.completeAvatar)
            }
            
        }
    }
    
    
    
    
    
    private var spinner: some View {
        Spinner(isAnimating: true, style: .medium)
    }
    
    
}



