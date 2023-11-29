//
//  CookifyTabView.swift
//  Cookify
//
//  Created by jake gilbert on 10/29/23.
//

import SwiftUI

struct CookifyTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "square.stack")
                    Text("Feed")
                }
            RecordRecipeView(posting: <#RecipePosting#>,
                             prep_timer: <#RecipeTimer#>,
                             cook_timer: <#RecipeTimer#>)
                .tabItem {
                    Image(systemName: "carrot")
                    Text("Record")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    CookifyTabView()
}
