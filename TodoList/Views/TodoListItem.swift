//
//  TotoListItem.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct TodoListItem: View {
    
    let todoItem: TodoItemModel
    
    var body: some View {
        HStack{
            Image(systemName: todoItem.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todoItem.isCompleted ? Color.green : Color.red)
            Text(todoItem.title)
            Spacer()
        }
    }
}

struct TotoListItem_Previews: PreviewProvider {
    static let item1 = TodoItemModel(title: "This is title", isCompleted: true)
    static let item2 = TodoItemModel(title: "This is title", isCompleted: false)
    
    static var previews: some View {
        Group {
            TodoListItem(todoItem: item1)
            TodoListItem(todoItem: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
