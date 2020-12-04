//
//  RemoteImage.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/14/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct RemoteImage: View {
    private enum LoadState {
        case loading, success, failure
    }

    private class Loader: ObservableObject {
        var dataLoader = Data()
        var state = LoadState.loading

        init(url: String) {
//            guard var parsedURL = URL(string: url) else {
//                fatalError("Invalid URL: \(url)")
//            }
            print("دانلود عکسسسسسسسسسسسس")
            let url = URL(string: url)
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField:"Content-Type")
            request.setValue(WebAPI.token, forHTTPHeaderField:"Authorization")
            request.timeoutInterval = 60.0
            URLSession.shared.dataTask(with: request) {
                    (data: Data?, response: URLResponse?, error: Error?) -> Void in
                if let data = data, data.count > 0 {
                    print("  موفق بود")
                    print(data)
                    self.dataLoader = data
                    self.state = .success
                    
                } else {
                    print(" ریدم توی انی دانلودر ")
                    print(error?.localizedDescription)
                    self.state = .failure
                }

                DispatchQueue.main.async {
                    self.objectWillChange.send()
                }
            }.resume()

//            URLSession.shared.dataTask(with: parsedURL) { data, response, error in
//                if let data = data, data.count > 0 {
//                    self.data = data
//                    self.state = .success
//                } else {
//                    self.state = .failure
//                }
//
//                DispatchQueue.main.async {
//                    self.objectWillChange.send()
//                }
//            }.resume()
        }
    }

    @StateObject private var loader: Loader
    var loading: Image
    var failure: Image

    var body: some View {
        selectImage()
            .resizable()
    }

    init(url: String,
         loading: Image = Image(systemName: "photo"),
         failure: Image = Image(systemName: "multiply.circle")) {
        _loader = StateObject(wrappedValue: Loader(url: url))
        self.loading = loading
        self.failure = failure
    }

    private func selectImage() -> Image {
        switch loader.state {
        case .loading:
            return loading
        case .failure:
            return failure
        default:
            if let image = UIImage(data: loader.dataLoader) {
                return Image(uiImage: image)
            } else {
                return failure
            }
        }
    }
}

 
