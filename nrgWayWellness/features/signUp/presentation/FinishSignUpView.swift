//
//  FinishSignUpView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/6/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct FinishSignUpView: View {
    
    @EnvironmentObject var settings: UserSettings
    @ObservedObject var viewModel = SignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    
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
    
    var chooseYourPassword: some View {
            
        VStack {
            
            ZStack(alignment: .topLeading) {
                HStack() {
                    
                    Image(systemName: "exclamationmark.circle")
                        .foregroundColor(lightGrayColor)
                        .padding(.trailing,5)
                    Spacer()
                    
                }
                 
                
                Text("      Please Choose your password. your password should be at least 8 characters.")
                    .foregroundColor(lightGrayColor)
                    .padding(.trailing, 10)
                    .font(.system(size: 20, weight: .regular, design: .default))
                Spacer()
                
            }
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
    }
    
    var passwordInputView: some View {
        
        VStack {
            CustomTextField(
                placeholder: Text("Password").foregroundColor(grayd9d9d9Color),
                text: $viewModel.password)
                .accentColor(lightGrayColor)
                .frame(width: 320, height: 38)
                .font(.system(size: 20, weight: .regular, design: .default))
                .keyboardType(.emailAddress)
                .autocapitalization(UITextAutocapitalizationType.none)
                .foregroundColor(navyBlueColor)
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(RoundedRectangle(cornerRadius: 10).stroke(lightGrayColor, lineWidth: 2))
            .padding(.top, 10)
            
            
            CustomTextField(
                placeholder: Text("Password Confirmation").foregroundColor(grayd9d9d9Color),
                text: $viewModel.passwordAgain)
                .accentColor(lightGrayColor)
                .frame(width: 320, height: 38)
                .font(.system(size: 20, weight: .regular, design: .default))
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
     
    var finishButton: some View {
        Button(action: {
            if(viewModel.isFinishSignUpViewValid) {
                startMainPage()
            }
            
             
        }) {
            if(viewModel.isFinishSignUpViewValid) {
                Text("Finish!")
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                    .frame(width: 160)
                    .background(navyBlueColor)
                    .cornerRadius(14)
            } else {
                Text("Finish!")
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                    .frame(width: 160)
                    .background(grayd9d9d9Color)
                    .cornerRadius(14)
            }
             
            
            
        }
    }
    
    var previousStepButton: some View {
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
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView() {
                    VStack {
                         

                        headerView
                        
                        Spacer()
                       
                        chooseYourPassword
                        
                        Spacer()
                        
                        passwordInputView
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            HStack {
                                Spacer()
                                
                                previousStepButton
                                
                                finishButton
                                
                                Spacer()                                
                                
                            }
                            
                            HStack {
                                Spacer()
                                
                                FinishedStepperView()
                                
                                Spacer()
                                
                                
                            }.padding(.top, 20)
                            
                        }.padding(.top, 20)
                        .padding(.bottom, 50)
                        
                        
                        
                    }.frame(width: geometry.size.width,
                            height: geometry.size.height)
                }
            }.edgesIgnoringSafeArea(.all)
         
        
        
        
    }
    
    private func startMainPage() {
        self.showMain = true
        UserDefaults.standard.set(true, forKey: "Loggedin")
        UserDefaults.standard.synchronize()
        self.settings.loggedIn = true
    }
}

struct FinishSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        FinishSignUpView()
    }
}
