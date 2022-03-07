//
//  AlphabeltView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

enum AlphabeltButton: String{
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case E = "E"
    case F = "F"
    case G = "G"
    case H = "H"
    case I = "I"
    case J = "J"
    case K = "K"
    case L = "L"
    case M = "M"
    case N = "N"
    case O = "O"
    case P = "P"
    case Q = "Q"
    case R = "R"
    case S = "S"
    case T = "T"
    case U = "U"
    case V = "V"
    case W = "W"
    case X = "X"
    case Y = "Y"
    case Z = "Z"
}

struct AlphabeltView: View {
    @State var backHome = false
    
    let buttons: [[AlphabeltButton]] = [
        [.A, .B, .C, .D],
        [.E, .F, .G, .H],
        [.I, .J, .K, .L],
        [.M, .N, .O, .P],
        [.Q, .R, .S, .T],
        [.U, .V, .W, .X],
        [.Y, .Z],
    ]
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            VStack{
                Spacer().frame(height: 70)
                Text("Bảng chữ cái Tiếng anh")
                    .multilineTextAlignment(.leading)
                    .padding()
                    .font(.largeTitle)
                Spacer().frame(height: 13)
                VStack{
                    ForEach(buttons, id: \.self){row in
                        HStack{
                            ForEach(row,id: \.self){item in
                                Button(action:{
                                    
                                },label: {
                                    Text(item.rawValue)
                                        .frame(width: 70, height: 70)
                                        .background(Color.teal)
                                        .foregroundColor(.white)
                                        .cornerRadius(20)
                                        .font(.system(size: 32))
                                })
                            }
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
                            .padding(.leading,-5)
                            .padding()
                            .frame(width: 200)
                            .font(.title2)
                            .foregroundColor(Color.white)
                    }
                    .background(Color.red)
                    .cornerRadius(100)
                }.fullScreenCover(isPresented: $backHome, onDismiss: nil){
                    ContentView()
                }
            }
        }
    }
}

struct AlphabeltView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabeltView()
    }
}
