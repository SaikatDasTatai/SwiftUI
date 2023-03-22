//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by Sd Saikat Das on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            StaticTextView()
            StaticTextStyleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
