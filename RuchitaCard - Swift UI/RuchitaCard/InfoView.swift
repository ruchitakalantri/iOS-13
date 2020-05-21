//
//  InfoView.swift
//  RuchitaCard
//
//  Created by Ruchita Rathi on 5/11/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import SwiftUI

struct InfoView: View {
        
        let text : String
        let imageName : String
        
        var body: some View {
                RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 50)
                        .overlay(HStack {
                                Image(systemName: imageName).foregroundColor(.green)
                                Text(text)
                        })
                        .padding(.all)
        }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Heloo", imageName: "phone.fill")
                .previewLayout(.sizeThatFits)
    }
}
