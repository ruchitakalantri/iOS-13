//
//  ContentView.swift
//  H4XOR Newz
//
//  Created by Ruchita Rathi on 5/20/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI



struct ContentView: View {
        
       @ObservedObject var networkManager = NetworkManager()
        
    var body: some View {
        NavigationView {
                // for every single post in posts array
                List(networkManager.posts) { post in
                        NavigationLink (destination : DetailView(url : post.url)) {
                                HStack {
                                        Text(String(post.points))
                                        Text(post.title)
                                        }
                        }
                      
                        
                }
        .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
                self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


