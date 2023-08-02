//
//  NewToDoView.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title = ""
    @State var isImportant = false
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    var body: some View {

        VStack {
            Text("Task title :")
                .font(.title)
                    .fontWeight(.bold)
            TextField("Enter the task description...", text: $title)
                .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                      .padding()
            Toggle(isOn : $isImportant) {
                Text ("Is it important?")
            } //toggle closing
            .padding()
            Button("Add") {
                self.addTask(title : self.title, isImportant : self.isImportant)
                self.showNewTask = false
            } //button closing
        } //vstack closing
    } //closing bracket
    private func addTask(title : String, isImportant : Bool = false) {
        let task = ToDoItem(title : title, isImportant : isImportant)
        toDoItems.append(task)
    } //func closing
} //closing bracket

//no editing under here
struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title : "", isImportant : false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
