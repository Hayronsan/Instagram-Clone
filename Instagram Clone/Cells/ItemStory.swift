//
//  ItemStory.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        
        VStack {
            Image("person")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(.red,lineWidth: 2))
            Text("John")
                .font(.system(size: 13.5))
        }
        .padding(.trailing, 10)
        .frame(height: 100)
        
    }
}

#Preview {
    ItemStory()
}
