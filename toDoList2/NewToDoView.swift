//
//  NewToDoView.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack{
            Text("New Task:").font(.title).foregroundColor(Color(hue: 0.743, saturation: 0.47, brightness: 0.632)).multilineTextAlignment(.center)
            TextField("✨ enter your task here...", text: $toDoItem.title, axis: .vertical).padding(.all).frame(width: 350.0).background(Color(hue: 0.743, saturation: 0.084, brightness: 1.0)).cornerRadius(30)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important??")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.472, green: 0.331, blue: 0.63))
                    .multilineTextAlignment(.center)
                    .padding(.leading, 40.0)
            }
            .padding(.trailing, 50.0)
            
            Button{
                addToDo()
                showNewTask = false
            } label: {
                Text("SAVE")
                    .font(.title)
                    .foregroundColor(Color(red: 0.472, green: 0.331, blue: 0.63))
                    
            }.padding(.horizontal).background(Color(red: 0.951, green: 0.916, blue: 0.999)).cornerRadius(15)
        }.padding()
    }
    func addToDo(){
        let toDo = ToDoItem(title:toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(showNewTask: .constant(false),toDoItem: ToDoItem(title: "", isImportant: false))
}
