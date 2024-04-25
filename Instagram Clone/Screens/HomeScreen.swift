//
//  HomeScreen.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }.frame(height: 100)
                
                ItemPost(img_url: "image1")
                ItemPost(img_url: "image2")
                ItemPost(img_url: "image3")
            }
            .padding(.leading, -15)
            .padding(.trailing, -15)
            
            .listStyle(PlainListStyle())
            
            .navigationBarTitle("Instagram", displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "camera").foregroundColor(.red), trailing: Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Image(systemName: "person")
                    .foregroundColor(.red)
            }))
            
        }
        
    }
}

#Preview {
    HomeScreen()
}
