//
//  TodoItemModel.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import Foundation

struct TodoItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var isCompleted: Bool
}
