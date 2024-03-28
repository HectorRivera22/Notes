//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                NavigationLink(destination: New_Note(), label: {
                    Text("Add Task")
                        .frame(width: 400, height: 125)
                        .font(.title)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .position(CGPoint(x: 180.0, y: 620.0))
                
            }.navigationTitle("Notes")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
