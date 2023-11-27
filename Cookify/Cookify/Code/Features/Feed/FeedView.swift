//
//  FeedView.swift
//  Cookify
//
//  Created by jake gilbert on 10/29/23.
//

import SwiftUI

struct Post: Decodable{
    let id: Int
    
    let postProfile: String
    let postTitle: String
    let description: String
    let imageURL: String
}

struct PostResponse{
    let request: [Post]
}

struct MockData{
    static let samplePost = Post(id: 001,
                                 postProfile: "Meeks",
                                 postTitle: "cookies",
                                 description: "These are some wonderful cookies. I baked them today.",
                                 imageURL: "String")
    
    static let samplePostList = [samplePost, samplePost, samplePost]
}

struct postCard: View {
    var body: some View{
        Text("hello")
            .listRowBackground(Color(red: 0.996, green: 0.961, blue: 0.929))
    }
}


struct FeedView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self){ post in
                        FeedCell()
                    }
                }
            }
            .background(Color(red: 0.996, green: 0.961, blue: 0.929))
        }
    }
}
    
    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            FeedView()
        }
    }
