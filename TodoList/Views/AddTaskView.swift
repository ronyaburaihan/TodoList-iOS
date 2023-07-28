//
//  AddTaskView.swift
//  TodoList
//
//  Created by Abu Raihan Rony on 25/7/23.
//

import SwiftUI

struct AddTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: TodoListViewModel
    
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                TextField("Type something here", text: $textFieldText, axis: .vertical)
                    .frame(minHeight: 40)
                    .padding(.horizontal)
                    .padding(.vertical,5)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Spacer(minLength: 10)
                
                Button (action: submitButtonPressed){
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
            
        }.navigationBarTitle("Add an Item")
            .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func submitButtonPressed(){
        if isTextAppropriate() {
            viewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        } else {
            alertTitle = "Your new todo item must be at least 3 character long!!!"
            showAlert = true
        }
    }
    
    func isTextAppropriate() -> Bool {
        return textFieldText.count > 2
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddTaskView()
        }.environmentObject(TodoListViewModel())
    }
}
