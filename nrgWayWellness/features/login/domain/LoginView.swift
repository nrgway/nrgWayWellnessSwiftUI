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
    
    @State var alertMsg = ""
    @State private var showMain = false
    @State private var showForgotPassword = false
    @State private var showInvitationCodeView = false
    @State var showAlert = false
    @State var showDetails = false
    
    @State var loginSelection: Int? = nil
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var headerView: some View {
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
       }
    }
    
    var userPassInputView: some View {
        VStack {
            CustomTextField(
                placeholder: Text("Email").foregroundColor(grayd9d9d9Color),
                text: $viewModel.username)
                .accentColor(.white)
            //TextField("Email", text: $viewModel.username)
                .frame(width: 320, height: 38)
                .font(.system(size: 20, weight: .regular, design: .default))
                .imageScale(.small)
                .keyboardType(.emailAddress)
                .autocapitalization(UITextAutocapitalizationType.none)
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
            
            ZStack {
                
                HStack {
                    Spacer()
                    Image(systemName:"eye")
                        .foregroundColor(.white)
                        .padding(.trailing, 20)
                    
                }
                CustomTextField(
                    placeholder: Text("Password").foregroundColor(grayd9d9d9Color),
                    text: $viewModel.password)
                    .accentColor(.white)
                //SecureField("Password", text:$viewModel.password)
                    .frame(width: 320, height: 38)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .imageScale(.small)
                    .autocapitalization(UITextAutocapitalizationType.none)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 25)
                    //.background(Blur(style: .regular))
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                
            }
            .padding(.top, 10)
            
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
    }
    
    var createOneView: some View {
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
    }
    
    var loginButton: some View {
        Button(action: {
            loginUser()
           
        }) {
            Text("Login")
                .foregroundColor(navyBlueColor)
                .padding(.vertical)
                .frame(width: 320)
                .background(Color.white)
                .cornerRadius(14)
            
            
        }
    }
    
    var body: some View {
        content.onAppear{}
        
    }
   
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return loginView().eraseToAnyView()
            
        case .loading:
            return LoadingView().eraseToAnyView()
        //LoadingView().eraseToAnyView()
        
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .tokenIsValid:
            return loginView().onAppear{ startMainPage() }.eraseToAnyView()
        }
    }
    
    
    private func loginView() ->  some View {        
        let view = VStack {
            
            VStack {
                 
                headerView
                
                userPassInputView
                               
                
                Spacer()
                
                createOneView
                
                VStack(alignment: .trailing) {
                    HStack {
                        Spacer()
                        loginButton
                        
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
                    
                    
                }
                .padding(.top, 20)
                .padding(.bottom, 50)
                
                
                
            }
            .background(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.bottom)
            
        }
        return view
    }
    
    private func loginUser() {
        viewModel.login()
    }
    
    private func startMainPage() {
        self.showMain = true
        UserDefaults.standard.set(true, forKey: "Loggedin")
        UserDefaults.standard.synchronize()
        self.settings.loggedIn = true
    }
    
    
    fileprivate func isValidInputs() -> Bool {
        
//        if self.email == "" {
//            self.alertMsg = "Email can't be blank."
//            self.showAlert.toggle()
//            return false
//        } else if !self.email.isValidEmail {
//            self.alertMsg = "Email is not valid."
//            self.showAlert.toggle()
//            return false
//        } else if self.password == "" {
//            self.alertMsg = "Password can't be blank."
//            self.showAlert.toggle()
//            return false
//        } else if !(self.password.isValidPassword) {
//            self.alertMsg = "Please enter valid password"
//            self.showAlert.toggle()
//            return false
//        }
//        
        return true
    }
    
}

 


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
