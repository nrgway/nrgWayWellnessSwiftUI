//
//  HomeView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
 
struct HomeView : View {
    
    @State var txt = ""
    
    var body : some View{
        
        VStack(spacing: 15){
            
            HStack(spacing: 12){
                
                Image("logo").renderingMode(.original).resizable().frame(width: 30, height: 30)
                
                Text("Hi, Kavsoft").font(.body)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("filter").renderingMode(.original)
                }
            }

            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15){
                    
                    HStack(spacing: 15){
                        
                        HStack{
                            
                            Image(systemName: "magnifyingglass").font(.body)
                            
                            TextField("Search Groceries", text: $txt)
                            
                        }.padding(10)
                        .background(Color("Color1"))
                        .cornerRadius(20)
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("mic").renderingMode(.original)
                        }
                    }
                    
                    
                    HStack{

                        Text("NGT Instructors").font(.title)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("More")
                            
                        }.foregroundColor(lightblueColor)
                        
                    }.padding(.vertical, 15)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 15){
                            
                            ForEach(categories,id: \.self){i in
                                
                                VStack{
                                    
                                    Image("41")
                                        .frame(width: 50, height: 50)
                                    
                                            
                                    Text(i)
                                }.padding(10)
                            }
                        }
                    }
                    
                    HomeBottomView()
                    
                    
                }
            }
            
        }.padding(.horizontal)
    }
}

struct HomeBottomView : View {
    
    var body : some View{
        
        VStack(spacing: 15){
            
            LatestVideosView()
            
            ChallengesView()
        }
    }
}






struct RecipeCellView : View {
    
    var data : recipe
    
    var body : some View{
        
        VStack(spacing: 10){
            
            Image(data.image)
            
            HStack(spacing: 10){
                
                Image(data.authorpic)
                
                VStack(alignment: .leading, spacing: 6){
                    
                    Text(data.name).fontWeight(.semibold)
                    Text(data.author).foregroundColor(.green).fontWeight(.semibold)
                }
            }

        }
    }
}

struct Detail : View {
    
    @Binding var show : Bool
    @State var top = UIApplication.shared.windows.last?.safeAreaInsets.top
    
    @State var count = 0
    
    var body : some View{
        
        VStack(spacing: 0){
            
            Image("header")
                .resizable()
                .frame(height: UIScreen.main.bounds.height / 2.5)
                .edgesIgnoringSafeArea(.top)
                .overlay(
            
                    VStack{
                        
                        HStack(spacing: 12){
                            
                            Button(action: {
                                
                                self.show.toggle()
                                
                            }) {
                                
                                Image("back").renderingMode(.original)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("download").renderingMode(.original)
                            }
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("Wishlist").renderingMode(.original)
                            }
                            
                        }.padding()
                        
                        Spacer()
                    }
            
                )
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading,spacing: 15){
                    
                    Text("Seedless Lemon").font(.title)
                    
                    Text("30.00 / kg").foregroundColor(.green)
                    
                    Divider().padding(.vertical, 15)
                    
                    HStack{
                        
                        Image("rp1").renderingMode(.original)
                        
                        Text("Diana Organic Farm")
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("chat").renderingMode(.original)
                        }
                    }
                    
                    Text("Organic seedless lemon will enhance the flavor of all your favorite recipes, including chicken, fish, vegetables, and soups without the hassle of picking out the seeds. They are also fantastic in marinades, sauces, and fruit salads.").foregroundColor(.gray)
                    
                    HStack{
                        
                        Text("Reviews (48)")
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("More")
                            
                        }.foregroundColor(Color("Color"))
                        
                    }.padding(.vertical, 10)
                    
                    HStack{
                        
                        Image("rp2").renderingMode(.original)
                        
                        VStack(alignment: .leading, spacing: 6){
                            
                           HStack{
                                
                                Text("4")
                                Image(systemName: "star.fill").foregroundColor(.yellow)
                                
                            }
                            
                            Text("Oh Yeon Seo")
                            Text("The Lemon is So Fresh And Delivery is So Speed....")
                        }
                        
                    }.padding()
                    .background(Color("Color1"))
                    .cornerRadius(12)
                    
                    HStack(spacing: 20){
                        
                        Spacer(minLength: 12)
                        
                        Button(action: {
                            
                            self.count += 1
                        }) {
                            
                            Image(systemName: "plus.circle").font(.largeTitle)
                            
                        }.foregroundColor(.green)
                        
                        Text("\(self.count)")
                        
                        Button(action: {
                            
                            if self.count != 0{
                                
                                self.count -= 1
                            }
                            
                        }) {
                            
                            Image(systemName: "minus.circle").font(.largeTitle)
                            
                        }.foregroundColor(.green)
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("Add to Cart").padding()
                            
                        }.foregroundColor(.white)
                        .background(Color("Color"))
                        .cornerRadius(12)
                        
                        Spacer(minLength: 12)
                    }
                }
                
            }.padding()
            .overlay(
            
            
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        HStack{
                            
                            Text("4").foregroundColor(.white)
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            
                        }.padding()
                        .background(Color.green)
                        .cornerRadius(12)
                    }
                    .padding(.top,-20)
                    .padding(.trailing)
                        
                    
                    Spacer()
                }
            
            )
            .background(RoundedCorner().fill(Color.white))
            .padding(.top, -top! - 25)
                
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}
// sample datas...

var tabs = ["Home","Wishlist","Cart"]

var categories = ["Fruits","Vegetables","Beverages","Fish","Breads"]

struct fresh : Identifiable {
    
    var id : Int
    var name : String
    var price : String
    var image : String
}

struct recipe : Identifiable {
    
    var id : Int
    var name : String
    var author : String
    var image : String
    var authorpic : String
}

var freshitems = [
fresh(id: 0, name: "Frozen Fish", price: "20.00 / pcs",image: "41"),
fresh(id: 1, name: "Seedless Lemon", price: "30.00 / kg",image: "41"),
fresh(id: 2, name: "Coffee Bread", price: "15.00 / pack",image: "41")
]

var recipeitems = [
recipe(id: 0, name: "Basil Pasta", author: "Karlien Nijhuis",image: "41",authorpic: "rp1"),
recipe(id: 1, name: "Banana Rice", author: "Harmen Porter",image: "41",authorpic: "rp2"),
recipe(id: 2, name: "Ramen", author: "Marama Peter",image: "r3",authorpic: "41")
]



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
