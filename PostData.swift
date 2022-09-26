//
//  PostData.swift
//  H4X0RNews
//
//  Created by user215496 on 9/25/22.
//

import Foundation
//decode our JSON data into Results
struct Results: Decodable{
    let hits: [Post]
}
struct Post:Decodable, Identifiable{
    //computed properties
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
