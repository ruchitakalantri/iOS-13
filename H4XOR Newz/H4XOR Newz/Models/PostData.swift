//
//  PostData.swift
//  H4XOR Newz
//
//  Created by Ruchita Rathi on 5/20/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import Foundation

struct Results : Decodable {
        let hits : [Post]
}

struct Post : Decodable, Identifiable {
        var id : String {
                return objectID
        }
        let objectID : String
        let points : Int
        let title : String
        let url : String?
}
