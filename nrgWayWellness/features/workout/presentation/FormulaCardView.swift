//
//  FormulaCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import Alamofire

struct FormulaCardView: View {
    
    let formulaEntity: FormulaEntity
    @Environment(\.imageCache) var cache: ImageCache
    
    init(formula: FormulaEntity) {
        formulaEntity = formula
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack() {
                 
                poster
                VStack(alignment: .leading) {
                    
                    HStack() {
                        
                        Button(action: {
                                }) {
                                        Text("Intermediate")
                                            .font(.system(.headline, design: .rounded))
                                            .padding(.top,5)
                                            .padding(.bottom,5)
                                            .padding(.trailing,10)
                                            .padding(.leading,10)
                                            .foregroundColor(.white)
                                            .background(lightBrownColor)
                                            .cornerRadius(8)
                                             
                        }.padding(5)
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                        
                    HStack( ) {
                        Image("play")
                            .resizable()
                            .frame(width: 70, height: 70, alignment: .center)
                    }
                    .frame(maxWidth: .infinity )
                   
                    
                    Spacer()
                    
                    HStack() {
                       
                        Spacer()
                        
                        Text("03:45")
                            .foregroundColor(lightGrayColor)
                            .font(.subheadline)
                        
                         
                    }
                   
                }
                .padding(.bottom, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .aspectRatio(3/2, contentMode: .fit)
               
            }
            
            
            HStack() {
                
                // avatar
                Image("22")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                
                // name
                VStack{
                    Text(formulaEntity.name ?? "")
                        .foregroundColor(lightGrayColor)
                        .font(.headline)
                    let description = formulaEntity.descriptionField ?? ""
                    Text(description.prefix(14))
                        .foregroundColor(lightGrayColor)
                        .font(.headline)
                }
                
                
                Spacer()
                
                // post time
                Text(formulaEntity.createdAt ?? "")
                    .foregroundColor(lightGrayColor)
                    .font(.subheadline)
                
                 
            }
            
            
            
        }
        .padding(15)
        
        
    }
     
    private var poster: some View {
        formulaEntity.poster.map { url in

            AsyncImage(
                url: url,
                cache: cache,
                placeholder: spinner,
                configuration: { $0.resizable().renderingMode(.original) }
            )
        }
        .aspectRatio(contentMode: .fit)
        .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)

//        let image = Image(systemName: "")
//            .resizable()
//            .aspectRatio(3/2, contentMode: .fit)
//
//        formulaEntity.poster.map { url in
//
//            Alamofire.request(.GET, url).response { (request, response, data, error) in
//                image.image = UIImage(data: data, scale:1)
//                }
//        }
        
       
        
    }
    
    private var spinner: some View {
        Spinner(isAnimating: true, style: .medium)
    }
}

 
