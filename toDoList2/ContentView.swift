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
    @Environment(\.modelContext) var modelContext
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
                    ZStack{
                        Color(red: 208 / 255, green: 232 / 255, blue: 255 / 255)
                        HStack{
                            if toDoItem.isImportant{
                                Text("‼️" + toDoItem.title)
                            } else{
                                Text(toDoItem.title)
                            }
                        }.padding()
                    }.listRowInsets(EdgeInsets()).listRowBackground(Color.clear)
                    
                }.onDelete(perform: deleteToDo)
            }.listStyle(.plain)
        }.background(Color(red: 208 / 255, green: 232 / 255, blue: 255 / 255))
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title:"", isImportant: false))
        }
    }
    func deleteToDo(at offsets: IndexSet){
        for offset in offsets{
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}

#Preview {
    ContentView().modelContainer(for: ToDoItem.self, inMemory: true)
}
