//
//  LoginFormView.swift
//  To Do List App
//
//  Created by Pooyan J on 2/2/1403 AP.
//

import SwiftUI

struct LoginFormView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    // attempt to login
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Login")
                            .foregroundColor(Color.white)
                    }
                })
            }
            VStack {
                Text("New around here?")
                Button("Create an account") {
                    // show registration
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    LoginFormView()
}
