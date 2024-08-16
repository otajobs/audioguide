//
//  SignUpView.swift
//  AudioGuide
//
//  Created by Otajon Ruzimov on 16/08/24.
//

import SwiftUI
//import FirebaseAuth

struct SignUpView: View {
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Create a new account")
            
            Spacer()
            TextField("Email address", text: $emailAddress)
                .textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
               
            }, label: {
                Text("Continue")
            })
            Spacer()
        }
        .padding(16)
    }
}

#Preview {
    SignUpView()
}
