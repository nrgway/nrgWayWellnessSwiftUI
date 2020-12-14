    //
    //  ChallengesCellView.swift
    //  nrgWayWellness
    //
    //  Created by Hosein Alimoradi on 9/1/1399 AP.
    //  Copyright © 1399 wellness. All rights reserved.
    //
    
    import SwiftUI
    import KingfisherSwiftUI
    
    struct ChallengesCellView: View {
        
        var category : CategoryEntity
        
        @State var show = false
        
        @State var fullName: String = ""
        @State var avatarUrl: String = ""
        
        init(data : CategoryEntity) {
            category = data
            fullName = (data.name ?? "")
        }
        
        var body : some View {
            
            ZStack{
                
                NavigationLink(destination: ChallengeListView(show: self.$show,
                                                              viewModel: ChallengeViewModel()
                                                              //, data: instructor
                ), isActive: self.$show) {
                    
                    Text("")
                }
                
                HStack(){
                    
                    category.completeAvatarURL.map { url in
                        KFImage(url)
                            .resizable()
                            .frame(width: 140, height: 140)
                            .scaledToFit()
                            .cornerRadius(5)
                        
                    }
                    
                    VStack {
                        HStack{
                            Text(category.name ?? "")
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true) //** It keeps 'width size' and expands 'height size'
                                .frame(width: 75)
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .padding(.top, 5)
                        
                        Spacer()
                        
                        HStack(alignment: .lastTextBaseline) {
                            
                            
                            Text(String(category.countVideos ?? 0))
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                            
                        }
                        
                    }
                    
                    
                    
                }
                .background(challengItemColor)
                .cornerRadius(5)
                .shadow(radius: 5)
                .onTapGesture {
                    
                    self.show.toggle()
                }
                
            }
        }
    }
    
    
