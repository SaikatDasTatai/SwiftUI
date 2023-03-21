//
//  ContentView.swift
//  iDine
//
//  Created by Sd Saikat Das on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode(
        [MenuSection].self,
        from: "menu.json"
    )
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) {section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
