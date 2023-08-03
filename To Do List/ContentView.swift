//
//  ContentView.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>
    @State private var showNewTask = false
    @Environment(\.managedObjectContext) var context
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                Button("+") {
                    self.showNewTask = true
                } //button closing
            } //hstack closing
            .padding()
            Spacer()
            List{
                ForEach(toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                                        Text(toDoItem.title ?? "No title")
                    }
                }//foreach closing
                .onDelete(perform: deleteTask)
            } //list closing
            if showNewTask == true {
                NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
            } //ifstatement closing
        } //vstack closing
    } //closing bracket
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        } //func closing
    
} //closing bracket


// nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
