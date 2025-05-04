//
//  toDoList2App.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import SwiftUI
import SwiftData

@main
struct toDoList2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: ToDoItem.self)
        }
    }
}
