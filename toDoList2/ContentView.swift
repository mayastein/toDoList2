//
//  ContentView.swift
//  toDoList2
//
//  Created by Maya Stein on 5/3/25.
//

import SwiftUI

struct ContentView: View {
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
                    
                } label: {
                    Text("+").font(.system(size:52))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hue: 0.743, saturation: 0.47, brightness: 0.632))
                        .padding(.all)
                }
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
