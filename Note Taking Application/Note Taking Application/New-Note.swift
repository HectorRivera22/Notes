//
//  New-Note.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/27/24.
//

import SwiftUI

struct New_Note: View {
    //this earray that is storing all my titles to my notes
    @State private var note: String = ""
    // Array to store my notes 
    @Binding var notesArray: [Note]
    //this array stores the context to my notes
    @State private var editor: String = ""
    var body: some View {   
        //NaviogationView allows me to use navigation links which ius what allows me to like several pages
        NavigationView{
            //V stack is so everything displayed on my website is from top to bottom
            VStack{
            // The text field is just an imput that allows me to display the title of my notes from my array called "note"
                TextField("Title", text: $note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // The text field is just an imput that allows me to display the text of my notes from my array called "editor"
                TextEditor(text: $editor)
                // These modifiyers are so the context look better for the notes
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .frame(width: 350,height:500)
                    .foregroundColor(Color.gray)
                    .lineSpacing(5)
                // Allows to add new notes to the array
                Button(action: {
                    let newNote = Note(title:note, context:editor)
                    notesArray.append(newNote)
                }, label: {
                    //Add note is so it adds the new note to the array
                    Text("Add Note")
                        .padding(12)
                        .cornerRadius(8)
                })
            }
            // it's the title to my front page
            .navigationTitle("New Note")
        }
    }
}

#Preview {
    New_Note(notesArray:.constant([]))
}
