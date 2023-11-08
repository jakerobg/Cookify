//
//  PostModel.swift
//  Cookify
//
//  Created by jake gilbert on 11/4/23.
//
//  The struct/model that holds all the information for a post - can encode and decode with JSON

import Foundation


struct Post: Codable {
    let postTitle: String
    let description: String
    let imageURL: String
