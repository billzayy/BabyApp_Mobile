//
//  DetailView.swift
//  BabyApp_Demo
//
//  Created by Phan Le Tuan on 05/03/2022.
//

import SwiftUI

struct DetailView: View {
    
    @State var showHome = false
    var body: some View {
        ZStack{
            Color.teal.ignoresSafeArea()
            Text("Hello World")
            }
        }
    }

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
