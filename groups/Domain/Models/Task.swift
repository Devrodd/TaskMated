//
//  Task.swift
//  TaskMated
//
//  Created by Rodrigo on 03/04/25.
//

import Foundation

struct Task: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    
    init(id: UUID, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
