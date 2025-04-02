//
//  ContentView.swift
//  TaskMated
//
//  Created by Rodrigo on 02/04/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Task Mated")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Inicie sessão para continuar")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Camp E-mail
                
                TextField("E-mail", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                // Campo senha
                
                SecureField("Senha", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Login
                
                Button("Entra") {
                    viewModel.login()
                }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                .padding(.top, 10)
            }
            .padding()
            
            .alert("Aviso", isPresented: $viewModel.showAlert) {
                Button("Ok", role: .cancel) { }
            } message: {
                Text(viewModel.alertMessage)
            }

            
            .navigationDestination(isPresented: $viewModel.isLoggedIn) {
                TodoListView()
            }
        }
    }
    
}
