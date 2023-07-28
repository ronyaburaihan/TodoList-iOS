//
//  TodoItemModel.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import Foundation

struct TodoItemModel: Identifiable, Codable  {
    var id: String = UUID().uuidString
    let title: String
    var isCompleted: Bool
}
