//
//  New-Note.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/27/24.
//

import SwiftUI

struct New_Note: View {
    @State private var note: String = ""
    @State private var print: [String] = []
    @State private var editor: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextField("Title", text: $note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextEditor(text: $editor)
                    .padding()
                    .background(Color.gray)
                    .frame(width: 350,height:500)
//                    .background(Color.gray)
//                    .textFieldStyle(RoundedBordrTextFieldStyle())
                    .foregroundColor(Color.gray)
                    .lineSpacing(5)
                    .border(Color.black)
                Button(action: { print.append(note)
                }, label: {
                    Text("Add Note")
                        .padding(12)
//                        .background(!note.isEmpty ?)
                        .cornerRadius(8)
                })
//                Spacer()
            }
            .navigationTitle("New Note")
        }
    }
}

#Preview {
    New_Note()
}
