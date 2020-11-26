//
//  LoginView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI


struct LoginView: View {
    
    @EnvironmentObject var settings: UserSettings
    
    @State var email: String = ""
    @State var password: String = ""
    @State var alertMsg = ""
    @State private var showMain = false
    @State private var showForgotPassword = false
    @State private var showInvitationCodeView = false
    @State var showAlert = false
    @State var showDetails = false
    
    @State var loginSelection: Int? = nil
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    
    var body: some View {
        
        VStack {
            
            VStack {
                 
                Image("icon_app")
                   .resizable()
                   .aspectRatio(contentMode: .fill)
                   .frame(width: 250, height: 150)
                   .padding(.top, 40)
                   .padding(.bottom, 20)
                
                VStack {
                    
                    HStack {
                        Text("Let’s sign you in!")
                            .font(Font.system(size:30, design: .default))
                            .foregroundColor(Color.white)
                            .padding(.vertical)
                        Spacer()
                        
                    }
                    
                    
                    HStack {
                        Text("Welcome back!")
                            .font(Font.system(size:15, design: .default))
                            .foregroundColor(lightGrayColor2)
                        
                        Spacer()
                        
                    }
                }.padding(.leading, 20)
                .padding(.bottom, 50)
                
                VStack {
                    
                    TextField("Email", text: $email)
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
                        .background(Capsule().stroke(Color.white, lineWidth: 2))
                    
                    ZStack {
                        
                        HStack {
                            Spacer()
                            Image(systemName:"eye")
                                .foregroundColor(.white)
                                .padding(.trailing, 30)
                            
                        }
                        
                        SecureField("Password", text: $password)
                            .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                            .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                            .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                            .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                            .imageScale(.small)
                            .autocapitalization(UITextAutocapitalizationType.none)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Capsule().stroke(Color.white, lineWidth: 2))
                        
                    }
                    .padding(.top, 10)
                    
                }
                .padding(.trailing, 20)
                .padding(.leading, 20)
                
                
               
                
                Spacer()
                
                VStack {
                    
                    HStack {
                        Spacer()
                        Text("I don’t have any account.")
                            .foregroundColor(.white)
                        
                        Button(action: {
                            self.showInvitationCodeView = true
                        }) {
                            Text("Create one!")
                                .foregroundColor(lightBrownColor)
                        }.sheet(isPresented: self.$showInvitationCodeView) {
                            InvitationCodeView()
                        }
                        
                        Spacer()
                    }
                    
                }
                
                VStack(alignment: .trailing) {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            self.showMain = true
                            UserDefaults.standard.set(true, forKey: "Loggedin")
                            UserDefaults.standard.synchronize()
                            self.settings.loggedIn = true
                        }) {
                            Text("Login")
                                .foregroundColor(navyBlueColor)
                                .padding(.vertical)
                                .frame(width: 320)
                                .background(Color.white)
                                .cornerRadius(14)
                            
                            
                        }
//                        .sheet(isPresented: self.$showMain) {
//                            ForgotPasswordView()
//                        }
                        //                    .sheet(isPresented: self.$showMain) {
                        //                        MainTabView()
                        //                    }
                        
                        
                        //                     Button(action: {
                        //                         if  self.isValidInputs() {
                        //                             // For use with property wrapper
                        //                             UserDefaults.standard.set(true, forKey: "Loggedin")
                        //                             UserDefaults.standard.synchronize()
                        //                             self.settings.loggedIn = true
                        //                             // ==========
                        //
                        //                             // For use with property wrapper
                        //                             //                self.dataStore.loggedIn = true
                        //                             // ==========
                        //
                        //
                        //                         }
                        //
                        //                     }) {
                        //                         buttonWithBackground(btnText: "LOGIN")
                        //                     }
                        Spacer()
                        
                    }
                    
                    
                }.padding(.top, 20)
                .padding(.bottom, 50)
                
                
                
            }
            .background(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
    
    
    fileprivate func isValidInputs() -> Bool {
        
        if self.email == "" {
            self.alertMsg = "Email can't be blank."
            self.showAlert.toggle()
            return false
        } else if !self.email.isValidEmail {
            self.alertMsg = "Email is not valid."
            self.showAlert.toggle()
            return false
        } else if self.password == "" {
            self.alertMsg = "Password can't be blank."
            self.showAlert.toggle()
            return false
        } else if !(self.password.isValidPassword) {
            self.alertMsg = "Please enter valid password"
            self.showAlert.toggle()
            return false
        }
        
        return true
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

