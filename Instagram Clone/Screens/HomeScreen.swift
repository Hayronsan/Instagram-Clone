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
            
            VStack {
                
                Button(action: {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    Text("Logout")
                })
                
            }
            .navigationBarTitle("Instagram", displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
            .foregroundColor(.red)
            
        }
        
    }
}

#Preview {
    HomeScreen()
}
