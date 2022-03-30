//
//  PageAnimalView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 22/03/2022.
//

import SwiftUI
import AVKit

class SoundManagerAnimal{
    static let instance = SoundManagerAnimal()
    
    var player: AVAudioPlayer?
    
    func playSound(sound: AnimalButton){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let  error{
            print("Error play sound .\(error.localizedDescription)")
        }
    }
}
struct PageAnimalView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PageAnimalView1: View{
    let buttons: [[AnimalButton]] = [
        [.rat, .ox],
        [.tiger, .cat]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManagerAnimal.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .background(Color.white)
                                .frame(width: 180, height: 180)
                                .cornerRadius(20)
                        })
                    }
                }
            }
        }
    }
}

struct PageAnimalView2: View{
    let buttons: [[AnimalButton]] = [
        [.dragon, .snake],
        [.horse, .goat]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManagerAnimal.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 180, height: 180)
                                .cornerRadius(20)
                        })
                    }
                }
            }
        }
    }
}

struct PageAnimalView3: View{
    let buttons: [[AnimalButton]] = [
        [.monkey, .rooster],
        [.dog, .pig]
    ]
    var body: some View{
        VStack{
            ForEach(buttons, id: \.self){row in
                HStack{
                    ForEach(row,id: \.self){item in
                        Button(action:{
                            SoundManagerAnimal.instance.playSound(sound: item)
                        },label: {
                            Image(item.rawValue)
                                .resizable()
                                .frame(width: 180, height: 180)
                                .cornerRadius(20)
                        })
                    }
                }
            }
        }
    }
}
struct PageAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        PageAnimalView()
    }
}
