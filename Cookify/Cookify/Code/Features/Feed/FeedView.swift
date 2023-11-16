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
            ZStack{
                Color(red: 0.996, green: 0.961, blue: 0.929)
                    .ignoresSafeArea()
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
                    .background(Color(red: 0.996, green: 0.961, blue: 0.929))
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(Color(red: 0.996, green: 0.961, blue: 0.929))
                .navigationTitle("What's Cooking:")
            }
        }
    }
}

#Preview {
    FeedView()
}
