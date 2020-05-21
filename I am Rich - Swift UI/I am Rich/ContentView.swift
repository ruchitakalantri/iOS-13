//
//  ContentView.swift
//  I am Rich
//
//  Created by Ruchita Rathi on 5/11/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI

//define ui look like
struct ContentView: View {
    var body: some View {
        ZStack {
                Color(.systemTeal)
                        .edgesIgnoringSafeArea(.all)
                VStack {
                        Text("I Am Rich")
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        Image("diamond")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200, alignment: .center)
                }
                
        }
        
    }
}

// how preview is displayed and behave
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
