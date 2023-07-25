//
//  AddTaskView.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct AddTaskView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                TextField("Type something here", text: $textFieldText, axis: .vertical)
                    .frame(minHeight: 50)
                    .padding(.horizontal)
                    .padding(.vertical,5)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Spacer(minLength: 10)
                
                Button (action: {}){
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
            
        }.navigationBarTitle("Add an Item")
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddTaskView()
        }
    }
}
