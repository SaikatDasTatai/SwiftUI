//
//  ItemRow.swift
//  iDine
//
//  Created by Sd Saikat Das on 21/03/23.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .mock)
    }
}
