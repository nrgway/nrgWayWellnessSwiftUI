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
   
    var firstNameInputView: some View {
        CustomTextField(
            placeholder: Text("First Name").foregroundColor(grayd9d9d9Color),
            text: $email)
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
    
    var lastNameInputView: some View {
        CustomTextField(
            placeholder: Text("Last Name").foregroundColor(grayd9d9d9Color),
            text: $email)
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
    
    var emailInputView: some View {
        CustomTextField(
            placeholder: Text("Email").foregroundColor(grayd9d9d9Color),
            text: $email)
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
    
    var cellPhoneInputView: some View {
        CustomTextField(
            placeholder: Text("Cell Phone").foregroundColor(grayd9d9d9Color),
            text: $email)
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
    
    var difficultyLevelInputView: some View {
        CustomTextField(
            placeholder: Text("Difficulty Level").foregroundColor(grayd9d9d9Color),
            text: $email)
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
    
    var nextStepButton: some View {
        Button(action: {
            self.showFinishSignup = true
             
        }) {
            Text("Next Step")
                .foregroundColor(Color.white)
                .padding(.vertical)
                .frame(width: 160)
                .background(navyBlueColor)
                .cornerRadius(14)
            
            
        }.sheet(isPresented: self.$showFinishSignup) {
            FinishSignUpView()
        }
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView() {
                    VStack {
                         
                        headerView
                        
                        Spacer()
                        
                        VStack {
                            firstNameInputView
                            
                            lastNameInputView
                            
                            emailInputView
                            
                            cellPhoneInputView
                            
                            difficultyLevelInputView
                            
                            difficultyLevelInputView
                        }
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            HStack {
                                Spacer()
                                
                                previousStepButton
                                
                                nextStepButton
                                
                                Spacer()
                            }
                            
                            HStack {
                                Spacer()
                                
                                SecondStepperView()
                                
                                Spacer()
                                }
                            .padding(.top, 20)
                            
                            Spacer(minLength: 40)
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
