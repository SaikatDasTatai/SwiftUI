//
//  StaticTextView.swift
//  SwiftUIComponents
//
//  Created by Sd Saikat Das on 23/03/23.
//

import SwiftUI

struct StaticTextView: View {
    var body: some View {
        VStack {
            // Simple text
            Text("Hello World")

            // How to create static labels with a Text view
            Text(
                "\nThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip."
            )
            .lineLimit(3)
            .frame(width: 200)
            
            // We can also provide line limit ranges rather than a specific value – we might want to allow any range between 3 and 6, for example:
            Text("\nThis is some longer text that is limited to a specific range of lines, so anything more than six lines will cause the text to clip.")
                .lineLimit(3...6)
                .frame(width: 200)
            
           // If you need an exact line limit – meaning “this text should have exactly two lines of height, not more and not less”, you should use the reservesSpace parameter like this:
            Text("\nThis is always two lines")
                .lineLimit(3, reservesSpace: true)
            
            // We can also place the ellipsis in the middle or beginning depending on how important the various parts of your string are.
            Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                .lineLimit(1)
                .truncationMode(.middle)
        }
        .padding()
    }
}

struct StaticTextView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTextView()
    }
}
