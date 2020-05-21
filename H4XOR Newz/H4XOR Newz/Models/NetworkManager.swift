//
//  NetworkManager.swift
//  H4XOR Newz
//
//  Created by Ruchita Rathi on 5/20/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import Foundation


class NetworkManager: ObservableObject {
        
        @Published var posts = [Post]()
        
        func fetchData () {
                if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
                        let session = URLSession(configuration: .default)
                        let task = session.dataTask(with: url) {(data,response,error) in
                                if error == nil {
                                        let decoder = JSONDecoder()
                                        if let safeData = data {
                                                do {
                                                        let results = try decoder.decode(Results.self, from: safeData)
                                                        
                                                        DispatchQueue.main.async {
                                                                self.posts = results.hits
                                                        }
                                                        
                                                } catch {
                                                        print(error)
                                                }
                                                
                                        }
                                        
                                }
                                
                        }
                        task.resume()
                }
        }
}
