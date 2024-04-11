//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI
struct Note{
    var title:String
    var context:String
}

struct ContentView: View {
    // Array to store my notes
    @State private var array:[Note] = []
    var body: some View {
        //NaviogationView allows me to use navigation links which ius what allows me to like several pages
        NavigationView{
            //V stack is so everything displayed on my website is from top to bottom
            VStack {
                //it displays all the items in my array as a list
                List{
                    //this for each lets me click on any of my notes and take to a seperate page where it just displays the title and context of just that note
                        ForEach(array.indices, id: \.self){ index in
                            NavigationLink(destination: Detail_Notes(title:array[index].title, text:array[index].context), label: {
                                //this alligns my notes text and context vertically
                                VStack(alignment:.leading){
                                    Text("\(array[index].title)")
                                    Text("\(array[index].context)")
                                }
                            })
                        }
                    //the modifyer that lets me run the fuction that lets me delete
                        .onDelete(perform: deleteItem)
                    }
                // Navigation link takes me to a differnetn page where i can add notes
                NavigationLink(destination: New_Note(notesArray: $array), label: {
                    // this just the text on my button
                    Text("Add Task")
                    // modifiyers is so th ebutton looks nice
                        .frame(width: 400, height: 125)
                        .font(.title)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                //allowing me to ajust my button
                .position(CGPoint(x: 180.0, y: 305.0))
                //title for page
            }.navigationTitle("Notes")
            .padding()
        }
    }
    //function allows me to delete notes
    func deleteItem(offset: IndexSet){
        array.remove(atOffsets: offset)
    }
}

#Preview {
    ContentView()
}
