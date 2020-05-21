//
//  ContentView.swift
//  RuchitaCard
//
//  Created by Ruchita Rathi on 5/11/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                Color(red: 0.09, green: 0.63, blue: 0.52)
                        .edgesIgnoringSafeArea(.all)
                VStack {
                        Image("ruchita")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 250)
                                .clipShape(Circle())
                                .overlay(
                                        Circle().stroke(Color.white , lineWidth: 5)
                                )
                        Text("Ruchita Kalantri")
                                .font(Font.custom("Pacifico-Regular", size: 40))
                                .bold()
                                .foregroundColor(.white)
                        Text("iOS Developer")
                                .foregroundColor(.white)
                                .font(.system(size : 25))
                        Divider()
                        
                        InfoView(text: "+1 619 598 9137", imageName: "phone.fill")
                        InfoView(text: "ruchiita.kalantri@yahoo.com", imageName: "envelope.fill")
                        
                        
                        
                }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


