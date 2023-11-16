//
//  AccountModel.swift
//  Cookify
//
//  Created by jake gilbert on 11/4/23.
//
//  The model that stores user's data

import Foundation


struct Account: Codable {
    let username: String
    let id: Int
    
    //Followers and following are arrays of other users' ids
    let followers: [Int]
    let following: [Int]
    
    //array of post objects
    let Posts: [PostModel]

}
