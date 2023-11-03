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


struct FeedView: View {
    var body: some View {
        NavigationView{
            List(MockData.samplePostList, id: \.id){ Post in
    
                VStack(alignment: .leading){
                    Text(Post.postTitle)
                        .font(.title)
                        .fontWeight(.medium)
                    Text(Post.description)
                        .font(.headline)
                        .fontWeight(.light)
                    HStack{
                        Image("JT-Chocolate-Chip-Cookies-articleLarge")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
            }
            .navigationTitle("What's Cooking:")
        }
    }
}

#Preview {
    FeedView()
}
