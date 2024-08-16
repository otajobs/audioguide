//
//  LoginView.swift
//  AudioGuide
//
//  Created by Otajon Ruzimov on 16/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome to AudioGuide")
            
            Spacer()
            TextField("Email address", text: $emailAddress)
                .textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding(16)
    }
}

#Preview {
    LoginView()
}
