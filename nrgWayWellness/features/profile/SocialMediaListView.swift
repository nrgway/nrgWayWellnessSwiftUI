//
//  SocialMediaListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI


import SwiftUI
import SafariServices

struct Account: Identifiable {
    var id: Int
    
    let image, name, username, url: String
}

struct SocialMediaListView: View {
    let accounts: [Account] = [
           .init(id: 0, image: "github", name: "Github", username: "Ehtisham Khan ", url: "https://github.com/Ehtisham Khan "),
           .init(id: 1, image: "linkedin", name: "LinkedIn", username: "Ehtisham Khan ", url: "https://www.linkedin.com/Ehtisham Khan "),
           .init(id: 2, image: "instagram", name: "Instagram", username: "Ehtisham Khan ", url: "http://instagram.com/EhtishamKhan /")
       ]
    var body: some View {
   
            List(accounts, id: \.id) { acc in
                    HStack {
                        Image(acc.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(acc.name)
                            .font(.headline)
                        Text("Username: \(acc.username)")
                            .font(.subheadline)
                        Button(action: {
                            if let url = URL(string: acc.url) {
                                UIApplication.shared.open(url)
                            }
                            }){
                                Text("fgg")
                            }
                    }
                }
            }
        
    }
}

struct SocialMediaListView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaListView()
    }
}
