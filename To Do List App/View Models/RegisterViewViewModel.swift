//
//  RegisterViewViewModel.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String?
    @Published var isRegister: Bool?
    
    func registerUser() {
        if isValidate() {
            print("is going for register")
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, _ in
                if let userID = result?.user.uid {
                    self?.insertUserRecord(id: userID)
                } else {
                    print("register error")
                }
            }
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(name: name, id: id, email: email, joined: Date().timeIntervalSince1970)
        let database = Firestore.firestore()
        database.collection("users")
            .document(id)
            .setData(newUser.toDictionary())

            
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
