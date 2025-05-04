//
//  ContentView.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.system(size:50))
                    .fontWeight(.light)
                    .foregroundColor(Color(hue: 0.743, saturation: 0.47, brightness: 0.632))
                    .padding(.all)
                Spacer()
                Button {
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+").font(.system(size:52))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hue: 0.743, saturation: 0.47, brightness: 0.632))
                        .padding(.all)
                }
            }.padding()
            Spacer()
            List{
                ForEach(toDos){ toDoItem in
                    if toDoItem.isImportant{
                        Text("‼️" + toDoItem.title)
                    } else{
                        Text(toDoItem.title)
                    }
                }
            }.listStyle(.plain)
        }
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title:"", isImportant: false))
        }
    }
}

#Preview {
    ContentView().modelContainer(for: ToDoItem.self, inMemory: true)
}
