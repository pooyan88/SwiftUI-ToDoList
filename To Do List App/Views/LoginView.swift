//
//  LoginView.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //HEADER
                HeaderView(title: "To Do List", subtitle: "Get things done", backgroundColor: Color.pink, angle: 15)
                
                //Login Form
                Form {
                    if let error = viewModel.errorMessage {
                        Text(error).foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login",
                             backgroundColor: .blue) {
                        viewModel.login()
                    }
                    .padding()
                }
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: {
                        RegisterView()
                    })
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
