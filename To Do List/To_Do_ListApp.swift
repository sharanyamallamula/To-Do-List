//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
