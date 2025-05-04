//
//  ToDoItem.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem{
    var title: String
    var isImportant: Bool
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
