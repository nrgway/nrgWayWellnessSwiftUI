//
//  UrlImageView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/14/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

import SwiftUI
struct UrlImageView: View {
@ObservedObject var urlImageModel: UrlImageModel

init(urlString: String?) {
    urlImageModel = UrlImageModel(urlString: urlString)
}

var body: some View {
    Image(uiImage: urlImageModel.image ?? UrlImageView.defaultImage!)
        .resizable()
        .scaledToFill()
}

static var defaultImage = UIImage(systemName: "photo")
}


class UrlImageModel: ObservableObject {
@Published var image: UIImage?
var urlString: String?

init(urlString: String?) {
     
    print("---------------------------------")
    print(urlString)
    print("---------------------------------")
    
    self.urlString = urlString
    loadImage()
}

func loadImage() {
    loadImageFromUrl()
}

func loadImageFromUrl() {
    guard let urlString = urlString else {
        return
    }
    
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)

    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField:"Content-Type")
    request.setValue(WebAPI.token, forHTTPHeaderField:"Authorization")
    request.timeoutInterval = 60.0
    
    let task = URLSession.shared.dataTask(with: request, completionHandler:
getImageFromResponse(data:response:error:))
    task.resume()
}


func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?)
{
    print(" شروع دریافت عکس")
    
    
    guard error == nil else {
        print("Error: \(error!)")
        return
    }
    guard let data = data else {
        print("No data found")
        return
    }
    
    DispatchQueue.main.async {
        print("+++++++++++++++++++++++")
        print(" DispatchQueue فت عکس")
        print(data)
        
        guard let loadedImage = UIImage(data: data) else {
            return
        }
        self.image = UIImage(data: data)
    }
  }
}
