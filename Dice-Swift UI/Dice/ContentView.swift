//
//  ContentView.swift
//  Dice
//
//  Created by Ruchita Rathi on 5/11/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
        @State var leftDiceNumber = 1
        @State var rightDiceNumber = 1
        
    var body: some View {
        ZStack {
                Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                
                VStack {
                        Image("diceeLogo")
                        Spacer()
                        HStack {
                                DiceView(n: leftDiceNumber)
                                DiceView(n: rightDiceNumber)
                        }.padding(.horizontal)
                        Spacer()
                        Button(action: {
                                // what should happen when button get pressed
                                self.leftDiceNumber = Int.random(in: 1...6)
                                self.rightDiceNumber = Int.random(in: 1...6)
                                
                        }) {
                                Text("Roll")
                                        .font(.system(size : 50))
                                        .fontWeight(.heavy)
                                        .foregroundColor(.white)
                                        .padding()
                        }.background(Color.red)
                }
        }
    }
}

struct DiceView: View {
        let n: Int
        
        var body: some View {
                Image("dice\(n)")
                        .resizable()
                        .aspectRatio(1 , contentMode: .fit)
                        .padding()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


