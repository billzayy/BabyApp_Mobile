//
//  ContentView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var showNumber = false
    @State var showAlphabelt = false
    @State var showAnimal = false
    var body: some View {
        ZStack{
            Color.teal.ignoresSafeArea()
            VStack{
                Spacer().frame(height: 30)
                Text("T.A.P")
                    .fontWeight(.heavy)
                    .padding()
                    .font(.largeTitle)
                Image("myImage")
                Spacer()
                Text("Baby App Project")
                    .fontWeight(.bold)
                    .padding()
                    .font(.largeTitle)
                Spacer().frame(height: 100)
            }
            VStack{
                HStack{
                    Button(action : {
                        self.showAlphabelt.toggle()
                    }){
                        HStack{
                            Image(systemName: "a.circle")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.leading, 15)
                            Text("Bảng chữ cái")
                                .multilineTextAlignment(.center)
                                .padding(.leading,-5)
                                .padding()
                                .frame(width: 200)
                                .font(.title2)
                                .foregroundColor(Color.white)
                            Image(systemName: "arrow.up")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.trailing, 15)
                        }
                        .background(Color.red)
                        .cornerRadius(100)
                    }.fullScreenCover(isPresented: $showAlphabelt){
                        AlphabeltView()
                    }
                }
                Spacer().frame(height: 35)
                HStack{
                    Button(action: {
                        self.showNumber.toggle()
                    }){
                        HStack{
                            Image(systemName: "1.circle")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.leading, 15)
                            Text("Bảng chữ số")
                                .multilineTextAlignment(.center)
                                .padding(.leading,-5)
                                .padding()
                                .frame(width: 200)
                                .font(.title2)
                                .foregroundColor(Color.white)
                            Image(systemName: "arrow.up")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.trailing, 15)
                        }
                        .background(Color.blue)
                        .cornerRadius(100)
                    }.fullScreenCover(isPresented: $showNumber){
                        NumberView()
                    }
                }
                Spacer().frame(height: 35)
                HStack{
                    Button(action : {
                        self.showAnimal.toggle()
                    }){
                        HStack{
                            Image(systemName: "pawprint.fill")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.leading, 15)
                            Text("Bảng động vật")
                                .multilineTextAlignment(.center)
                                .padding(.leading,-5)
                                .padding()
                                .frame(width: 200)
                                .foregroundColor(Color.white)
                                .font(.title2)
                            Image(systemName: "arrow.up")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.trailing, 15)
                        }
                        .background(Color.green)
                        .cornerRadius(100)
                    }.fullScreenCover(isPresented: $showAnimal){
                        AnimalView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDisplayName("mainPage")
.previewInterfaceOrientation(.portrait)
    }
}
