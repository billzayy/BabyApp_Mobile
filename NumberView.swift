//
//  NumberView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI
import AVKit

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

class SoundManagerNum{
    static let instance = SoundManagerNum()
    
    var player: AVAudioPlayer?
    
    func playSound(sound: NumberButton){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".wav") else { return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let  error{
            print("Error play sound .\(error.localizedDescription)")
        }
    }
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
            VStack{
                Spacer().frame(height: 30)
                Text("Number")
                    .multilineTextAlignment(.leading)
                    .padding()
                    .font(.system(size: 35, weight: .heavy))
                    .foregroundColor(.black)
                Spacer().frame(height: 20)
                ForEach(buttons, id: \.self){row in
                    HStack{
                        ForEach(row,id: \.self){item in
                            Button(action:{
                                SoundManagerNum.instance.playSound(sound: item)
                            },label: {
                                Image(item.rawValue) 
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .background(Color(red: 0.99, green: 0.95, blue: 0.61, opacity: 1.00))
                                    .cornerRadius(20)
                                    .padding(5)
                            })
                        }
                    }
                }
                Spacer()
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
            Image("Background Num")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
