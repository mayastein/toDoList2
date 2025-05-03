//
//  NewToDoView.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Text("Task Title:").font(.title).foregroundColor(Color(hue: 0.743, saturation: 0.47, brightness: 0.632))
            TextField("✨ add your task here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).padding(.all).frame(width: 350.0).background(Color(hue: 0.743, saturation: 0.084, brightness: 1.0)).cornerRadius(30)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it super important??")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.472, green: 0.331, blue: 0.63))
            }
            Button{
                
            } label: {
                Text("SAVE")
                    .font(.title)
                    .foregroundColor(Color(red: 0.472, green: 0.331, blue: 0.63))
                    
            }.padding(.horizontal).background(Color(red: 0.951, green: 0.916, blue: 0.999)).cornerRadius(15)
        }.padding()
    }
}

#Preview {
    NewToDoView()
}
