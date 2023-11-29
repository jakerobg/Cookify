//
//  FeedCell.swift
//  Cookify
//
//  Created by Mihir Singh on 11/22/23.
//

import Foundation
import SwiftUI

struct FeedCell: View{
    //vars
    let imageNames = ["JT-Chocolate-Chip-Cookies-articleLarge", "JT-Chocolate-Chip-Cookies-articleLarge","JT-Chocolate-Chip-Cookies-articleLarge"]
    var body: some View{
        VStack {
            //profile info + location info
            HStack {
                Image("JT-Chocolate-Chip-Cookies-articleLarge")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text("Meek (The Cookie Monster) Singh")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Location: ").font(.footnote).fontWeight(.semibold).foregroundColor(.gray) + Text("Concord MA").font(.footnote).foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.leading)
            //Post Title
            VStack{
                Text("Cookies with my Good Pal JakeRobG (But he is kind of annoying when he eats spaghetti)")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top, 1)
                    .padding(.trailing)
                //description
                Text("Cookies are so delicious. I want to eat them all")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.trailing)
            }
            //recipe info
            DisclosureGroup("Recipe Info"){
                HStack{
                    Text("Prep Time")
                        .frame(maxWidth: .infinity)
                        .fontWeight(.semibold)
                        .underline()
                    Text("Cook Time")
                        .frame(maxWidth: .infinity)
                        .fontWeight(.semibold)
                        .underline()
                    Text("Serves")
                        .frame(maxWidth: .infinity)
                        .fontWeight(.semibold)
                        .underline()
                }
                HStack{
                    Text("20 min")
                        .frame(maxWidth: .infinity)
                    Text("40 hrs")
                        .frame(maxWidth: .infinity)
                    Text("4")
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.trailing)
            
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            //image slider
            ImageCarouselView(images: imageNames)
            
            //            Image("JT-Chocolate-Chip-Cookies-articleLarge")
            //                .resizable()
            //                .scaledToFit()
            //                .frame(maxWidth: 363)
            //                .clipShape(Rectangle())
            //                .cornerRadius(15)
            //                .padding(.top, 2)
            //buttons
            HStack{
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                        .foregroundStyle(.black)
                }
                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "message")
                        .foregroundStyle(.black)
                }
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 1)
            //kudos info + comments info
            VStack{
                Text("69 complements to the chef")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top, 4)
                Text("View 0 comments")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
            }
            //underline (used to separate posts
            Divider()
                .frame(height: 2)
                .overlay(.black)
                .padding(.bottom, 6)
            
        }
        
    } //end of overarching vertical stack
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View{
        FeedCell()
    }
}

//image carousel structure
struct ImageCarouselView: View{
    let images: [String]
    var body: some View{
        TabView{
            ForEach(images, id: \.self){ imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 363)
                    .clipShape(Rectangle())
                    .cornerRadius(15)
            }
        }
        .frame(maxHeight: 250)
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
