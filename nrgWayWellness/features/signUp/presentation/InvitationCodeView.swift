//
//  InvitationCodeView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InvitationCodeView: View {
    
    @ObservedObject var viewModel = SignUpViewModel()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State private var showSignup = false
    
    @State private var showMain = false
    
    var headerView: some View {
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
    }
    
    var invitationCodeInputView: some View {
        VStack {
            CustomTextField(
                placeholder: Text("Invitation Code").foregroundColor(grayd9d9d9Color),
                text: $viewModel.invitationCode)
                .accentColor(lightGrayColor)
                .frame(width: 320, height: 38)
                .font(.system(size: 20, weight: .regular, design: .default))
                .imageScale(.small)
                .keyboardType(.emailAddress)
                .autocapitalization(UITextAutocapitalizationType.none)
                .foregroundColor(navyBlueColor)
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(RoundedRectangle(cornerRadius: 10).stroke(lightGrayColor, lineWidth: 2))
                .padding(.top, 10)
            
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
    }
    
    var loginInsteadView: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    
                }) {
                    Text("I have an account.")
                        .foregroundColor(lightGrayColor)
                }
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text(" Login instead.")
                        .foregroundColor(lightBrownColor)
                        .foregroundColor(Color("TextColor"))
                }
                
                Spacer()
            }
        }
    }
    
    var nextStepButton: some View {
        HStack {
            Spacer()
            
            Button(action: {
                if(viewModel.invitationCodeIsValid){
                    self.showMain = true
                }
            }) {
                if(viewModel.invitationCodeIsValid) {
                    Text("Next Step")
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                        .frame(width: 320)
                        .background(navyBlueColor)
                        .cornerRadius(14)
                } else {
                    Text("Next Step")
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                        .frame(width: 320)
                        .background(grayd9d9d9Color)
                        .cornerRadius(14)
                }
            }
            //.disabled(viewModel.invitationCodeIsValid)
            .sheet(isPresented: self.$showMain) {
                GetInformationSignUpView()                
            }
            
            Spacer()
            
            
        }
    }
    
    var invitationCodeStepperView: some View {
        HStack {
            Spacer()
            
            InvitationCodeStepperView()
            
            Spacer()
            
            
        }.padding(.top, 20)
    }
    
   
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView() {
                VStack {
                    
                    //headerView
                    headerView
                     
                    Spacer()
                    
                    VStack {
                        
                        ZStack(alignment: .topLeading) {
                            HStack() {
                                
                                Image(systemName: "exclamationmark.circle")
                                    .foregroundColor(lightGrayColor)
                                    .padding(.trailing,5)
                                Spacer()
                                
                            }
                            
                            
                            Text("      Please type down the company invitation sent to you for further steps.")
                                .foregroundColor(lightGrayColor)
                                .padding(.trailing, 10)
                                .font(.system(size: 20, weight: .regular, design: .default))
                            Spacer()
                        }
                    }
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    invitationCodeInputView
                    
                    Spacer()
                     
                    loginInsteadView
                    
                    VStack(alignment: .trailing) {
                        
                        nextStepButton
                        
                        invitationCodeStepperView
                        
                    }.padding(.top, 20)
                    .padding(.bottom, 50)
                    
                    
                    
                }.frame(width: geometry.size.width,
                        height: geometry.size.height)
            }
        }.edgesIgnoringSafeArea(.all)
        
        
        
        
    }
}




 
