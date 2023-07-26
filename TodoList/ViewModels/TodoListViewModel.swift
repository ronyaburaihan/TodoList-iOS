//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 26/7/23.
//

import Foundation

class TodoListViewModel: ObservableObject{
    
    @Published var todoItems: [TodoItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems: [TodoItemModel] = [
            .init(title: "First title", isCompleted: true),
            .init(title: "Second title", isCompleted: false),
            .init(title: "Third title", isCompleted: true),
            .init(title: "Fourth title", isCompleted: true),
            .init(title: "Fifth title", isCompleted: false),
        ]
        
        todoItems.append(contentsOf: newItems)
    }
    
    func addItem(title: String){
        todoItems.append(TodoItemModel(title: title, isCompleted: false))
    }
    
    func deleteItem(indexSet: IndexSet){
        todoItems.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        todoItems.move(fromOffsets: from, toOffset: to)
    }
}
