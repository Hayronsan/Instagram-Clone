//
//  StarterScreen.swift
//  Instagram Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct StarterScreen: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        
        VStack {
            if self.status {
                HomeScreen()
            }else{
                SignInScreen()
            }
        }
        .onAppear {
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main){ (_) in
                print("Call Notification Center")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
        
    }
}

#Preview {
    StarterScreen()
}
