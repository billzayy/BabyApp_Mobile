//
//  AlphabeltView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

enum AlphabeltButton: String{
    case a = "A letter" // Key = Value
    case b = "B letter"
    case c = "C letter"
    case d = "D letter"
    case e = "E letter"
    case f = "F letter"
    case g = "G letter"
    case h = "H letter"
    case i = "I letter"
    case j = "J letter"
    case k = "K letter"
    case l = "L letter"
    case m = "M letter"
    case n = "N letter"
    case o = "O letter"
    case p = "P letter"
    case q = "Q letter"
    case r = "R letter"
    case s = "S letter"
    case t = "T letter"
    case u = "U letter"
    case v = "V letter"
    case w = "W letter"
    case x = "X letter"
    case y = "Y letter"
    case z = "Z letter"
}

struct AlphabeltView: View {
    @State var backHome = false
    
    var body: some View {
        ZStack{
            VStack{
                Spacer().frame(height: 80)
                Text("Alphabelt")
                    .fontWeight(.heavy)
                    .padding()
                    .font(.system(size: 35))
                    .foregroundColor(Color.black)
                Spacer().frame(height: 0)
                TabView{
                    PageView1()
                        .padding()
                    PageView2()
                        .padding()
                    PageView3()
                        .padding()
                    PageView4()
                        .padding()
                    PageView5()
                        .padding()
                    PageView6()
                        .padding()
                    PageView7()
                        .padding()
                }.tabViewStyle(PageTabViewStyle())
                Spacer().frame(height: 70)
                
                Button(action : {
                    self.backHome.toggle()
                }){
                    HStack{
                        Image(systemName: "house")
                            .font(.system(size: 50))
                            .padding(.trailing, -15)
                            .padding(.leading, 10)
                            .padding()
                        Text("Home")
                            .padding(.trailing, 40)
                            .font(.system(size: 40))
                    }.foregroundColor(Color.white.opacity(1))
                        .background(Color(red:0.03922, green:0.19608, blue:0.00000,opacity: 0.8))
                        .cornerRadius(100)
                }.fullScreenCover(isPresented: $backHome, onDismiss: nil){
                    ContentView()
                }
            }
        }.background(
            Image("BackgroundAlpha")
                .resizable() // Chỉnh lại size hình ảnh cho phù hợp với màn hình
                .scaledToFill() // Cho hình ảnh tràn đầy ô ZStack
                .ignoresSafeArea() // Cho hình màn đi ra full màn hình
        )
    }
}

struct AlphabeltView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabeltView()
    }
}
