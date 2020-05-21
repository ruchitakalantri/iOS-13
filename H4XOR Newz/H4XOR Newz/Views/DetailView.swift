//
//  DetailView.swift
//  H4XOR Newz
//
//  Created by Ruchita Rathi on 5/20/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI


struct DetailView: View {
        
let url : String?
        
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

