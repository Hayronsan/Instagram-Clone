//
//  SignInScreen.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct SignInScreen: View {
    @State var userid = ""
    @State var userpw = ""
    @State var isShow = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Spacer()
                
                Image("person")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                TextField("User ID", text: $userid)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                SecureField("User ID", text: $userid)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                Button(action: {
                    
                    UserDefaults.standard.set(true, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    Spacer()
                    Text("Sign In")
                        .tint(.white)
                    Spacer()
                })
                .frame(height: 45)
                .background(.red)
                .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.blue)
                    Button(action: {
                        isShow = true
                    }, label: {
                        Text("Sign Up")
                    }).sheet(isPresented: $isShow, content: {
                        SignUpScreen()
                    })
                }
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    SignInScreen()
}
