//
//  ItemPost.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct ItemPost: View {
    var img_url = "image1"
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
//            header
            HStack {
                Image("person")
                    .resizable().frame(width: 50, height: 50).cornerRadius(25)
                HStack {
                    Text("John")
                        .font(.system(size: 14)).fontWeight(.bold)
                    Text("Follow")
                        .foregroundColor(.red)
                        .font(.system(size: 14)).fontWeight(.bold).foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "location")
                }
            }
            
//            post image
            Image(img_url)
                .resizable()
                .scaledToFit()
                .padding(.leading, -5)
                .padding(.trailing, -5)
            
//            horizontal bar
            HStack(alignment: .center) {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble")
                Image(systemName: "arrowshape.turn.up.backward.fill")
                Spacer()
                Image(systemName: "bookmark.fill")
            }.padding(.bottom, 5)
            
//            description
            Text("Liked by Sherzod and 101 others")
                .font(.system(size: 13.5)).padding(.bottom, 5)
            Text("John Thanks for sharing this post Thanks for sharing this post")
                .lineLimit(4)
                .font(.system(size: 13.5))
                .foregroundColor(.init(white: 0.2))
        }
        
    }
}

#Preview {
    ItemPost()
}
