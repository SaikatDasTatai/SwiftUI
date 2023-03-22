//
//  StaticTextStyleView.swift
//  SwiftUIComponents
//
//  Created by Sd Saikat Das on 23/03/23.
//

import SwiftUI

struct StaticTextStyleView: View {
    var body: some View {
        VStack {
            // Give font size
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .foregroundColor(.red)
                .foregroundStyle(.blue.gradient)
                .background(.green)
                .lineSpacing(10)
                .fontDesign(.serif)
                .fontWidth(.condensed)
                .frame(width: 300)
        }
        .padding()
    }
}

struct StaticTextStyleView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTextStyleView()
    }
}
