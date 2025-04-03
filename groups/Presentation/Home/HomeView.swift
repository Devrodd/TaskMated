import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Nova tarefa...", text: $viewModel.newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        viewModel.addTask()
                    }) {
                        Image(systemName: "plus")
                    }
                }
                .padding()
                
                List {
                    ForEach(viewModel.tasks) { task in
                        HStack {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    viewModel.toggleTaskCompletion(task: task)
                                }
                            
                            Text(task.title)
                                .strikethrough(task.isCompleted)
                        }
                    }
                    .onDelete(perform: viewModel.deleteTask)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Minhas Tarefas")
        }
    }
}
