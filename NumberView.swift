//
//  NumberView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

enum NumberButton: String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven  = "7"
    case eigth = "8"
    case nine = "9"
    case zero = "0"
}

struct NumberView: View {
    @State var backHome = false
    let buttons : [[NumberButton]] = [
        [.one, .two, .three],
        [.four, .five, .six],
        [.seven, .eigth, .nine],
        [.zero]
    ]
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Spacer().frame(height: 70)
                Text("Bảng chữ số")
                    .multilineTextAlignment(.leading)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer().frame(height: 80)
                ForEach(buttons, id: \.self){row in
                    HStack{
                        ForEach(row,id: \.self){item in
                            Button(action:{
                                
                            },label: {
                                Text(item.rawValue)
                                    .frame(width: 100, height: 100)
                                    .background(Color.mint)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .font(.system(size: 32))
                            })
                        }
                    }
                }
                Spacer()
                Button(action : {
                    self.backHome.toggle()
                }){
                    HStack{
                        Text("Home")
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 200)
                            .font(.title2)
                            .foregroundColor(Color.white)
                    }
                    .background(Color.orange)
                    .cornerRadius(50)
                }.fullScreenCover(isPresented: $backHome, onDismiss: nil){
                    ContentView()
                }
            }
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
