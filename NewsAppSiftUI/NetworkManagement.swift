//
//  NetworkManagement.swift
//  NewsAppSiftUI
//
//  Created by Md Zahidul Islam Mazumder on 20/11/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import Foundation

class NetworkManagement:ObservableObject {
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string:  "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let task = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                
                if error == nil{
                    let decoder = JSONDecoder()
                    if let data = data {
                        do{
                            let result = try decoder.decode(Result.self, from: data)
                            DispatchQueue.main.async {
                                self.posts =  result.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                        
                    }
                }
                
            }
            task.resume()
        }
        
    }
}
