//
//  AnimalView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

enum AnimalButton: String{
    case rat = "Rat"
    case ox = "Ox"
    case tiger = "Tiger"
    case cat = "Cat"
    case dragon = "Dragon-Call"
    case snake = "Snake"
    case horse = "Horse"
    case goat = "Goat"
    case monkey = "Monkey"
    case rooster = "Rooster"
    case dog = "Dog"
    case pig = "Pig"
}
struct AnimalView: View {
    @State var backHome = false
    
    let buttons: [[AnimalButton]] = [
        [.rat, .ox],
        [.tiger, .cat]
    ]
    var body: some View {
        ZStack{
            VStack{
                Spacer().frame(height: 50)
                Text("Animal")
                    .padding()
                    .font(.system(size: 40, weight: .heavy))
                Spacer().frame(height: 1)
                TabView{
                    PageAnimalView1()
                        .padding()
                    PageAnimalView2()
                        .padding()
                    PageAnimalView3()
                        .padding()
                }.tabViewStyle(PageTabViewStyle())
                Spacer().frame(height: 50)
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
//                            .frame(width: 141, height: 23)
                            .font(.system(size: 40))
                    }.foregroundColor(Color.white.opacity(1))
                        .background(Color(red:0.03922, green:0.19608, blue:0.00000,opacity: 0.8))
                        .cornerRadius(100)
                }.fullScreenCover(isPresented: $backHome, onDismiss: nil){
                    ContentView()
                }
            }
        }.background(
            Image("Background Animal")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
