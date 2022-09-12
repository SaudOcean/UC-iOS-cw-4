//
//  ContentView.swift
//  myGrocery
//
//  Created by Saud Al Mutairi on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var grocs = ["apple", "banana","tomato"]
    @State var name = ""
    var body: some View {
        VStack{
            List(grocs, id: \.self) {groc in
                HStack{
                Image(groc)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                Text(groc)
                
                }
            }
          
            HStack{
                Button(action: {grocs.append(name)}) { Image(systemName: "plus")}
                TextField("type your item", text: $name)
                Button(action:{grocs.remove(at:0)}){Image(systemName: "minus")}
                Button(action:{grocs.append(grocs.randomElement() ?? "")}){Image(systemName: "questionmark")}
                
            } }
        
        }
                 
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
