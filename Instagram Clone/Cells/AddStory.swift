//
//  AddStory.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("person")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                Image("plus")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
                
            Text("John")
                .font(.system(size: 13.5))
        }
        .padding(.trailing, 10)
        .frame(height: 100)
        
    }
}

#Preview {
    AddStory()
}
