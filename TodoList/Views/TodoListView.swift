//
//  TodoListView.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct TodoListView: View {
    
    @State var todoItems: [TodoItemModel] = [
        .init(title: "First title", isCompleted: true),
        .init(title: "Second title", isCompleted: false),
        .init(title: "Third title", isCompleted: true),
        .init(title: "Fourth title", isCompleted: true),
        .init(title: "Fifth title", isCompleted: false),
    ]
    
    var body: some View {
        List{
            ForEach(todoItems){ item in
                TodoListItem(todoItem: item)
            }
        }
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddTaskView()))
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TodoListView()
        }
    }
}


