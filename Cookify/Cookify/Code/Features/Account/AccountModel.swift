//
//  AccountModel.swift
//  Cookify
//
//  Created by jake gilbert on 11/27/23.
//

import Foundation


struct AccountModel: Decodable {
    let username: String
    let email: String
    let password: String
    let id: Int
    
    let followers: [Int]
    let following: [Int]
    
    let posts: [PostModel]
}
