//
//  ContentView.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
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
                        Text("!! " + toDoItem.title)
                    }
                    else {
                        Text(toDoItem.title)
                    }
                }//foreach closing
            } //list closing
            if showNewTask == true {
                NewToDoView(title : "", isImportant : false, toDoItems: $toDoItems, showNewTask: $showNewTask)
            } //ifstatement closing
        } //vstack closing
    } //closing bracket
} //closing bracket


// nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
