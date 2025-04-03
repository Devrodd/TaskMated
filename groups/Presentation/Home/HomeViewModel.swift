//
//  HomeViewModel.swift
//  TaskMated
//
//  Created by Rodrigo on 03/04/25.
//

import Foundation

struct TodoTask: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isCompleted: Bool = false
    
    mutating func toggleCompletion() {
        isCompleted.toggle()
    }
}

final class HomeViewModel: ObservableObject {
    
    @Published var tasks: [TodoTask] = []
    @Published var newTaskTitle: String = ""
    
    func addTask() {
        guard !newTaskTitle.isEmpty else { return }
        let newTask = TodoTask(title: newTaskTitle)
        tasks.append(newTask)
        newTaskTitle = ""
    }
    
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    
    func toggleTaskCompletion(task: TodoTask) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].toggleCompletion()
        }
    }
}
