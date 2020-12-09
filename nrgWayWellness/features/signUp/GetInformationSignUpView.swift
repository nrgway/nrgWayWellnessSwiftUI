//
//  GetInformationSignUpView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/6/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct GetInformationSignUpView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    @State var email: String = ""
    @State private var showFinishSignup = false
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView() {
                    VStack {
                         

                        VStack {
                            
                            HStack {
                                Text("Live in the NRG way!")
                                    .font(Font.system(size:30, design: .default))
                                    .foregroundColor(Color.white)
                                    .padding(.vertical)
                                Spacer()
                                
                            }
                            
                            
                            HStack {
                                Text("Start your daily workout after joining us.")
                                    .font(Font.system(size:15, design: .default))
                                    .foregroundColor(lightGrayColor2)
                                
                                Spacer()
                                
                            }
                        }.frame(height: 280)
                        .padding(.bottom, 60)
                        .padding(.horizontal,20)
                         
                        .background(CustomShapeSignUp().fill(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom)))
                        //.clipShape(CornersSignUp())
                        
                        Spacer()
                        
                        VStack {
                            
                            TextField("Password", text: $email)
                                .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                                .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                                .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                                .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                                 
                                .keyboardType(.emailAddress)
                                .autocapitalization(UITextAutocapitalizationType.none)
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                            .padding(.top, 10)
                            
                            TextField("Password Confirmation", text: $email)
                                .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                                .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                                .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                                .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                                 
                                .keyboardType(.emailAddress)
                                .autocapitalization(UITextAutocapitalizationType.none)
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                            .padding(.top, 10)
                            
                            TextField("Password", text: $email)
                                .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                                .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                                .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                                .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                                 
                                .keyboardType(.emailAddress)
                                .autocapitalization(UITextAutocapitalizationType.none)
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                            .padding(.top, 10)
                            
                            
                            
                            TextField("Password", text: $email)
                                .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                                .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                                .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                                .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                                 
                                .keyboardType(.emailAddress)
                                .autocapitalization(UITextAutocapitalizationType.none)
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                            .padding(.top, 10)
                            TextField("Password", text: $email)
                                .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                                .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                                .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                                .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                                 
                                .keyboardType(.emailAddress)
                                .autocapitalization(UITextAutocapitalizationType.none)
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                            .padding(.top, 10)
                            
                        }
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                                               
                    
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            HStack {
                                Spacer()
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                     
                                }) {
                                    Text("Previous Step")
                                        .foregroundColor(Color.white)
                                        .padding(.vertical)
                                        .frame(width: 160)
                                        .background(navyBlueColor)
                                        .cornerRadius(14)
                                }
                                
                                Button(action: {
                                    self.showFinishSignup = true
                                     
                                }) {
                                    Text("Finish!")
                                        .foregroundColor(Color.white)
                                        .padding(.vertical)
                                        .frame(width: 160)
                                        .background(navyBlueColor)
                                        .cornerRadius(14)
                                    
                                    
                                }.sheet(isPresented: self.$showFinishSignup) {
                                    FinishSignUpView()
                                }
                                
                                Spacer()
                                
                                
                            }
                            
                            HStack {
                                Spacer()
                                
                                SecondStepperView()
                                
                                Spacer()
                                
                                
                            }.padding(.top, 20)
                            
                        }.padding(.top, 20)
                        .padding(.bottom, 50)
                        
                        
                        
                    }.frame(width: geometry.size.width,
                            height: geometry.size.height)
                }
            }.edgesIgnoringSafeArea(.all)
         
        
        
        
    }
}


struct GetInformationSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        GetInformationSignUpView()
    }
}
