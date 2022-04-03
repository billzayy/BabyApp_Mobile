//
//  ContentView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State var showNumber = false
    @State var showAlphabelt = false
    @State var showAnimal = false
    
    var body: some View {
        ZStack{ // Tạo khuôn tổng cho giao diện bằng ZStack
            
            VStack{ // Tạo Vstack cho các thuộc tính để dọc
                Spacer().frame(height: 100)
                Image("myImage")
                Spacer()
                Text("Baby App Project")
                    .fontWeight(.bold)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                Spacer().frame(height: 175)
            }
            
            VStack{
                // Nút Bảng chữ cái
                HStack{ // Tách nút "bảng chữ cái" với các nút khác
                    Button(action : {
                        self.showAlphabelt.toggle()
                    }){
                        HStack{ // Cho tất cả thuộc tính trong nút nằm ngang
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
                        AlphabeltView() // => Chuyển qua màn hình Chữ Cái
                    }
                }
                Spacer().frame(height: 35)
                
                // Nút bảng chữ số
                HStack{
                    Button(action: {
                        self.showNumber.toggle()
                    }){
                        HStack{ // Cho các thuộc tính trong nút nằm ngang
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
                        NumberView() // => Chuyển qua màn hình chữ số
                    }
                }
                Spacer().frame(height: 35)
                
                //Nút Bảng động vật
                HStack{
                    Button(action : {
                        self.showAnimal.toggle()
                    }){
                        HStack{ // Cho các thuộc tính trong nút nằm ngang
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
                        AnimalView() // => Chuyển qua màn hình Động vật
                    }
                }
                
            }
        }.background( // Chỉnh ảnh background
            Image("BackgroundMain")
                .resizable() // Chỉnh lại size hình ảnh cho phù hợp với màn hình
                .scaledToFill() // Cho hình ảnh tràn đầy ô ZStack
        ).ignoresSafeArea() // Cho hình màn đi ra full màn hình
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDisplayName("mainPage")
            .previewInterfaceOrientation(.portrait)
    }
}
