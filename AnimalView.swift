//
//  AnimalView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

enum AnimalButton: String{
    case A = "Ant"
    case B = "Bee"
    case C = "Cow"
    case D = "Dog"
    case E = "Elephant"
    case F = "Flamingo"
    case G = "Girrafe"
    case H = "Horse"
    case I = "Insect"
    case J = "Jaguar"
    case K = "Koala"
    case L = "Lion"
    case M = "Monkey"
    case N = "Narwhal"
    case O = "Octopus"
    case P = "Panda"
    case Q = "Quail"
    case R = "Rabbit"
    case S = "Snail"
    case T = "Tiger"
    case U = "Unicorn"
    case V = "Vulture"
    case W = "Whale"
    case X = "Xantus"
    case Y = "Yurumi"
    case Z = "Zebra"
}
struct AnimalView: View {
    @State var backHome = false
    
    let buttons: [[AnimalButton]] = [
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
            Color.green.ignoresSafeArea()
            VStack{
                Spacer().frame(height: 10)
                Text("Bảng động vật")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.largeTitle)
                Spacer().frame(height: 10)
                ForEach(buttons, id: \.self){row in
                    HStack{
                        ForEach(row,id: \.self){item in
                            Button(action:{
                                
                            },label: {
                                Text(item.rawValue)
                                    .frame(width:90, height:90)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .font(.system(size: 20))
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

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
