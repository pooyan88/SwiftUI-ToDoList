//
//  LoginViewViewModel.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String?
    
    init() {}
    
    func login() {
        if isValidate() {
            Auth.auth().signIn(withEmail: email, password: password)
        }
    }
    
    
    private func isValidate()-> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Fill all fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Enter a valid email"
            return false
        }
        errorMessage = nil
        return true
    }
}
