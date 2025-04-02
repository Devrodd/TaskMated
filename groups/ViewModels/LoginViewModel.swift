//
//  ViewModels.swift
//  TaskMated
//
//  Created by Rodrigo on 02/04/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = ""
    
    
    // Flag
    
    @Published var isLoggedIn: Bool = false
    // Validation
    
    func login() {
        if email.isEmpty || password.isEmpty {
            alertMessage = "Preencha todos os campos"
            showAlert = true
        } else {
            print("Login realizado com: \(email)")
            alertMessage = "Login realizado!"
            showAlert = true
        }
    }
}
