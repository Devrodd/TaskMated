//
//  TodoListView.swift
//  TaskMated
//
//  Created by Rodrigo on 02/04/25.
//

import SwiftUI

struct TodoListView: View {
    var body: some View {
        VStack {
            Text("Bem-vindo à sua To-do list!")
                .font(.title)
                .padding()
            Text("Aqui Futuramente vamos Gerenciar tarefas. ")
                .foregroundColor(.gray)
        }
    }
}
