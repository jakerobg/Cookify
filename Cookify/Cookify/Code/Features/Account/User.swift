//
//  AccountModel.swift
//  Cookify
//
//  Created by jake gilbert on 11/4/23.
//
//  The model that stores user's data

import Foundation


struct User: Codable {
    var username = ""
    var id = 0
    
    //Followers and following are arrays of other users' ids
    var followers = [Int]()
    var following = [Int]()
    
    //array of post objects
    var Posts = [PostModel]()

}
