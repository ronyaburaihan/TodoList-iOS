//
//  TodoListApp.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

@main
struct TodoListApp: App {
    
   @StateObject var listViewModel: TodoListViewModel = TodoListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TodoListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
