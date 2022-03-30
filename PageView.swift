//
//  PageView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 10/03/2022.
//

import SwiftUI
import AVKit

class SoundManager{
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound(sound: AlphabeltButton){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let  error{
            print("Error play sound .\(error.localizedDescription)")
        }
    }
}

struct PageView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct PageView1: View{
    let buttons: [[AlphabeltButton]] =
    [
        [.a, .b],
        [.c, .d]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}

struct PageView2: View{
    let buttons: [[AlphabeltButton]] = [
        [.e, .f],
        [.g, .h]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}

struct PageView3: View{
    let buttons: [[AlphabeltButton]] = [
        [.i, .j],
        [.k, .l]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}
struct PageView4: View{
    let buttons: [[AlphabeltButton]] = [
        [.m, .n],
        [.o, .p]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}
struct PageView5: View{
    let buttons: [[AlphabeltButton]] =
    [
        [.q, .r],
        [.s, .t]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}
struct PageView6: View{
    let buttons: [[AlphabeltButton]] = [
        [.u, .v],
        [.w, .x]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}
struct PageView7: View{
    let buttons: [[AlphabeltButton]] =
    [
        [.y, .z]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManager.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 170, height: 170)
                                .background(Color(red: 0.91, green: 0.93, blue: 0.88, opacity: 1.00))
                                .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
}
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
        
    }
}
