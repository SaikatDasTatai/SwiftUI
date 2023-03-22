//
//  OrderView.swift
//  iDine
//
//  Created by Sd Saikat Das on 22/03/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price)")
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        Text("Checkout")
                    }
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
