//
//  TodoListView.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct TodoListView: View {

    @EnvironmentObject var viewModel: TodoListViewModel
    
    var body: some View {
        List{
            ForEach(viewModel.todoItems){ item in
                TodoListItem(todoItem: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            viewModel.updateItem(todoItem: item)
                        }
                    }
            }
            .onDelete(perform: viewModel.deleteItem)
            .onMove(perform: viewModel.moveItem)
        }
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddTaskView()))
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TodoListView()
        }.environmentObject(TodoListViewModel())
    }
}


