//
//  ToDoItem.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

class ToDoItem : Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title : String, isImportant : Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
//struct ToDoItem: View {
//    var body: some View {
//
//}

//struct ToDoItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ToDoItem()
//    }
//}
