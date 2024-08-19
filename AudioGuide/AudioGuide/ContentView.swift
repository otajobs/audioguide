//
//  ContentView.swift
//  AudioGuide
//
//  Created by Otajon Ruzimov on 8/16/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    @State var errorMessage: String?
    
    var body: some View {
        VStack {
            Text("Welcome to AudioGuide!")
            
            VStack(spacing: 16) {
                TextField("Email address", text: $userEmail)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                
                VStack(alignment: .leading, spacing: 8) {
                    SecureField("Password", text: $userPassword)
                        .textFieldStyle(.roundedBorder)
                    
                    if let errorMessage {
                        Text(errorMessage)
                            .foregroundStyle(.red)
                    }
                }
            }
            
            
            Button(action: {
                Auth.auth().createUser(
                    withEmail: userEmail,
                    password: userPassword) { authResult, error in
                        print("result", authResult)
                        if let errorMessage = error?.localizedDescription {
                            self.errorMessage = errorMessage
                        }
                        
                }
            }, label: {
                Text("Submit")
            })
            
            
            
        }
        .padding(16)
    }
}

#Preview {
    ContentView()
}
