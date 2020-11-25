//
//  InvitationCodeView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InvitationCodeView: View {
    @State var email: String = ""
    @State private var showSignup = false
    
    @State private var showMain = false
    var body: some View {
         
        VStack {
            
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
                }.frame(height: 300)
                .padding(.top, 20)
                .padding(.bottom, 40)
                .padding(.horizontal,20)
                 
                .background(CustomShapeSignUp().fill(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom)))
                .clipShape(CornersSignUp())
                
                VStack {
                    
                    TextField("Invitation Code", text: $email)
                        .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                        .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                        .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                        .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                        .imageScale(.small)
                        .keyboardType(.emailAddress)
                        .autocapitalization(UITextAutocapitalizationType.none)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 25)
                        .background(Capsule().stroke(lightGrayColor, lineWidth: 2))
                    
                     
                    .padding(.top, 10)
                    
                }
                .padding(.trailing, 20)
                .padding(.leading, 20)
                
                
               
                
                Spacer()
                
                VStack {
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            self.showSignup = true
                        }) {
                            Text("I have an account.")
                                
                                .foregroundColor(lightGrayColor)
                            
                            
                        }.sheet(isPresented: self.$showSignup) {
                            SignUpView()
                        }
                        
                        Button(action: {
                            self.showSignup = true
                        }) {
                            Text(" Login instead.")
                                .foregroundColor(lightBrownColor)
                                .foregroundColor(Color("TextColor"))
                        }.sheet(isPresented: self.$showSignup) {
                            SignUpView()
                        }
                        
                        Spacer()
                    }
                    
                }
                
                VStack(alignment: .trailing) {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            self.showMain = true
                             
                        }) {
                            Text("Next Step")
                                .foregroundColor(Color.white)
                                .padding(.vertical)
                                .frame(width: 320)
                                .background(navyBlueColor)
                                .cornerRadius(14)
                            
                            
                        }.sheet(isPresented: self.$showMain) {
                            ForgotPasswordView()
                        }
                        
                        Spacer()
                        
                        
                    }
                    
                    HStack {
                        Spacer()
                        
                        InvitationCodeStepperView()
                        
                        Spacer()
                        
                        
                    }.padding(.top, 20)
                    
                }.padding(.top, 20)
                .padding(.bottom, 50)
                
                
                
            }
            .background(Color.white).edgesIgnoringSafeArea(.all)
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}










struct InvitationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationCodeView()
    }
}
