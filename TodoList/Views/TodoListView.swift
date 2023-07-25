//
//  TodoListView.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct TodoListView: View {
    
    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "This is the third title"
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self){ item in
                TodoListItem(title: item)
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


