//
//  ColorKit.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import SwiftUI

//MARK:- Color

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
let lightGreenColor = Color(red: 21.0/255.0, green: 183.0/255.0, blue: 177.0/255.0, opacity: 1.0)

let lightblueColor = Color(red: 85.0/255.0, green: 84.0/255.0, blue: 166.0/255.0, opacity: 1.0)
 
let navyBlueColor = Color("navyBlueColor")
let navyBlueUIColor = UIColor(named: "navyBlueColor") 


let blackColor = Color("black")
let blackUIColor = UIColor(named: "black")

let lightGrayColor = Color("lightGray")
let lightGrayUIColor = UIColor(named: "lightGray")

let lightGrayColor2 = Color("lightGray2")
let lightGrayUIColor2 = UIColor(named: "lightGray2")

let gray3a3a3aColor = Color("gray3a3a3a")
let gray3a3a3aUIColor = UIColor(named: "gray3a3a3a")

let gray525252Color = Color("gray525252")
let gray525252UIColor = UIColor(named: "gray525252")

let grayaeaeaeColor = Color("grayaeaeae")
let grayaeaeaeUIColor = UIColor(named: "grayaeaeae")

let grayd6d8e7Color = Color("grayd6d8e7")
let grayd6d8e7UIColor = UIColor(named: "grayd6d8e7")


let grayColor = Color("gray")
let grayUIColor = UIColor(named: "gray")


let lightBrownColor = Color("lightBrown")
let lightBrownUIColor = UIColor(named: "lightBrown")

let loginFirstBlueColor = Color("loginFirstBlueColor")
let loginFirstBlueUIColor = UIColor(named: "loginFirstBlueColor")


let loginSecondBlueColor = Color("loginSecondBlueColor")
let loginSecondBlueUIColor = UIColor(named: "loginSecondBlueColor")

let grayHomeTitileColor = Color("grayHomeTitile")
let grayHomeTitileUIColor = UIColor(named: "grayHomeTitile")

let challengItemColor = Color("challengItemColor")
let challengItemUIColor = UIColor(named: "challengItemColor")


let lightRedColor = Color("lightRedColor")
let lightRedUIColor = UIColor(named: "lightRedColor")

let grayd9d9d9Color = Color("grayd9d9d9")
let grayd9d9d9UIColor = UIColor(named: "grayd9d9d9")


//extension Color {
//    public static var navyBlueColor: Color {
//        return Color(red: 4.0/255.0, green: 54.0/255.0, blue: 89/255.0, opacity: 1.0)
//    }
//
//    public static var darkGray: Color {
//        return Color(red: 57.0 / 255.0, green: 62.0 / 255.0, blue: 70.0 / 255.0)
//    }
//}
//
extension Color {
    
    static let chatBackground: Color = Color(r: 41, g: 121, b: 255.0)
    static let buttonBackground: Color = Color(r: 144.0, g: 202.0, b: 249.0)
    
    static let wifiBackground: Color = Color(r: 5, g: 23, b: 46)
    static let wifiShadow: Color = Color(r: 13, g: 50, b: 125)
    
    static let wifiConnected: Color = Color(r: 170, g: 255, b: 197)
    
    static let expandingBackground: Color = Color(r: 3, g: 247, b: 235)
    static let expandingAccent: Color = Color(r: 186, g: 38, b: 75)
    
    static let circleTrackStart: Color = Color(r: 237, g: 242, b: 255)
    static let circleTrackEnd: Color = Color(r: 235, g: 248, b: 255)
    
    static let circleRoundStart: Color = Color(r: 71, g: 198, b: 255)
    static let circleRoundEnd: Color = Color(r: 90, g: 131, b: 255)
    
    static let pillColor: Color = Color(r: 242, g: 53, b: 174)
    
    static let likeBackground: Color = Color(r: 49, g: 28, b: 78)
    static let likeOverlay: Color = Color(r: 64, g: 49, b: 82)
    
    static let likeColor: Color = Color(r: 254, g: 140, b: 100)
    
    static let submitColor: Color = Color(r: 110, g: 80, b: 249)
    
    static let materialBlack: Color = Color(r: 18, g: 18, b: 18)
    static let offWhite: Color = Color(r: 225, g: 225, b: 235)
    
    init(r: Double, g: Double, b: Double) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0)
    }
}

extension Color {
    
    init(hex: String) {
        self.init(UIColor(hex: hex))
    }
}

extension UIColor {
    /// For converting Hex-based colors
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0
        
        let length = hexSanitized.count
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            
        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}


// Foundation
extension Double {
    
    func clean(places: Int) -> String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(format: "%.\(places)f", self)
    }
}

