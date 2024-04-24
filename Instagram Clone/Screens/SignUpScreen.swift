//
//  SignUpScreen.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var firsname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Spacer()
                
                TextField("Firstname", text: $firsname)
                    .padding(.leading, 10)
                    .frame(height: 45)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                TextField("Lastname", text: $lastname)
                    .padding(.leading, 10)
                    .frame(height: 45)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                TextField("Email", text: $email)
                    .padding(.leading, 10)
                    .frame(height: 45)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                TextField("Address", text: $address)
                    .padding(.leading, 10)
                    .frame(height: 45)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                SecureField("Password", text: $password)
                    .padding(.leading, 10)
                    .frame(height: 45)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                Button(action: {
                    
                }, label: {
                    Spacer()
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                })
                .frame(height: 45)
                .background(.red)
                .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.blue)
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                    }, label: {
                        Text("Sign In")
                    })
                }
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    SignUpScreen()
}
