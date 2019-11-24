//
//  PostData.swift
//  NewsAppSiftUI
//
//  Created by Md Zahidul Islam Mazumder on 20/11/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import Foundation

struct Result:Decodable {
    let hits: [Post]
}

struct Post:Decodable,Identifiable {
    var id: String {
        return objectID
    }
    
    
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
