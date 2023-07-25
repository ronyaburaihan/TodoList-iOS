//
//  TotoListItem.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct TodoListItem: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct TotoListItem_Previews: PreviewProvider {
    static var previews: some View {
        TodoListItem(title: "This is the first title")
    }
}
