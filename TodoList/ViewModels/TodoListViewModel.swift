//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 26/7/23.
//

import Foundation

class TodoListViewModel: ObservableObject{
    
    let KEY_TODO_ITEMS: String = "items_list"
    
    @Published var todoItems: [TodoItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    init(){
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: KEY_TODO_ITEMS),
            let savedItems = try? JSONDecoder().decode([TodoItemModel].self, from: data)
        else { return }
        
        self.todoItems = savedItems
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
    
    func updateItem(todoItem: TodoItemModel){
        let index = todoItems.firstIndex(where: {$0.id == todoItem.id}) ?? 0
        todoItems[index].isCompleted.toggle()
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(todoItems){
            UserDefaults.standard.set(encodedData, forKey: KEY_TODO_ITEMS)
        }
    }
}
