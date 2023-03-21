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
        Text(item.name)
    }
}
