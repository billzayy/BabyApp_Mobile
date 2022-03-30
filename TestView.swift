//
//  TestView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 11/03/2022.
//

import SwiftUI

enum BlphabeltButton: String{
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

struct TestView: View {
    let buttons: [[BlphabeltButton]] = [
        [.A, .B],
    ]
    var body: some View {
        ZStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row, id : \.self){item in
                        Button(action: {
                            print(row)
                        },label: {
                            Text("\(item.rawValue)")
                                .padding()
                                .font(.system(size: 32))
                                .background(Color.black)
                        })
                    }
                }
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
