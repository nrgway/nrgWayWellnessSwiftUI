//
//  ContentView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/14/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

//MARK:-
 
struct CoreContentView: View {
    @State var alertMsg = ""
    
    var alert: Alert {
           Alert(title: Text(""), message: Text(alertMsg), dismissButton: .default(Text("OK")))
       }
    
    var body: some View {
        Text("Hello")
    }
}









//MARK:-
//MARK:- Textfields
struct textFieldWithSeperator: View {
    
    var placeholder: String
    var image: String
//    var text : String
   
    @State var username: String = ""
    @State var name = ""
    @Environment(\.editMode) var mode
    
    var body: some View {
        
        VStack {
            
            HStack {
                Image(image)
                    .padding(.leading, 20)
               
                TextField(placeholder, text: $username)
                    .frame(height: 40, alignment: .center)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .imageScale(.small)
//                    .disabled(mode?.wrappedValue == .inactive)
                //                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            Seperator()
        }
        
    }
}




struct buttons: View {
    
    var btnText: String
    
    var body: some View {
         
        Text(btnText)
            .font(.body)
            .foregroundColor(.black)
            //                 .frame(width: 150, height: 40)
            .padding()
    }
}


//MARK:-
//MARK:- Button with background & shaadow
struct buttonWithBackground: View {
    
    var btnText: String
    
    var body: some View {
        
        HStack {
//            Spacer()
            Text(btnText)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 140, height: 50)
                .background(lightblueColor)
                .clipped()
                .cornerRadius(5.0)
                .shadow(color: lightblueColor, radius: 5, x: 0, y: 5)
            
//            Spacer()
        }
    }
}

//MARK:-
//MARK:- Alert View
struct alertView: View {
    
    
    @State var alertMsg = ""
    
    var alert: Alert {
        Alert(title: Text(""), message: Text(alertMsg), dismissButton: .default(Text("OK")))
    }
    
    var body: some View {
        Text("Alert")
    }
    
}


//MARK: - Date Picker View
struct DatePickerView: View {
    
    var dateFormatter: DateFormatter {
           let formatter = DateFormatter()
           formatter.dateStyle = .long
           return formatter
    }
    
    @State private var birthDate = Date()
    
    var body: some View {
        
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
        
    }
}
 

struct CoreContentView_Previews: PreviewProvider {
    static var previews: some View {
        CoreContentView()
    }
}
