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
            Button(action : {}) {
                Text("Add")
            } //button closing
        } //vstack closing
    } //closing bracket
} //closing bracket

//no editing under here
struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title : "", isImportant : false)
    }
}
