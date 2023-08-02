//
//  ContentView.swift
//  To Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.black)
                Button(action : {}) {
                    Text("+")
                } //button closing
            } //hstack closing
            Spacer()
            .padding()
        } //vstack closing
    } //closing bracket
} //closing bracket


// nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
