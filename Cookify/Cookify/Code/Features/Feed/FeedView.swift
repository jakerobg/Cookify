//
//  FeedView.swift
//  Cookify
//
//  Created by jake gilbert on 10/29/23.
//

import SwiftUI



struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.userPosts, id: \.self){ post in
                        FeedCell(post: post, user: viewModel.user)
                        //Text(post.postId)
                        //
                        //.frame(minHeight:500)
                    }
                }
            }
            .navigationTitle("Feed")
            .background(Color(red: 0.996, green: 0.961, blue: 0.929))
        }
        .task {
            print("UPDATE")
            try? await viewModel.getProfileFeed()
            try? await viewModel.loadCurrentUser()
            
            print("EMAIL: \(viewModel.user.email)")
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

