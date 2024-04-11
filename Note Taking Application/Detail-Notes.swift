//
//  Detail-Notes.swift
//  Note Taking Application
//
//  Created by StudentAM on 4/9/24.
//

import SwiftUI

struct Detail_Notes: View {
    // this var is so the title on my notes can be stored in this string
    var title: String
    // this var is so the context in my notes can be stored in this string 
    var text: String
    var body: some View {
        //NaviogationView allows me to use navigation links which ius what allows me to like several pages
        NavigationView{
            //V stack is so everything displayed on my website is from top to bottom
            VStack(alignment: .leading){
                //text is just text that displays on my website
                Text(text)
                //these are moddifiyers so my website can look good
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                //the spacer is so everything on my website takes up space where i want it to
                Spacer()
                    
            }
            //these are modifiyers the the v stack for it to look nice
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            .padding()
            .navigationTitle(title)
        }
    }
}

#Preview {
    Detail_Notes(title: "Final", text: "Done")
}
