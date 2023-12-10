//
//  OrderView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
//                        .onDelete(perform: { indexSet in //index set comes from foreach
//                            orderItems.remove(atOffsets: indexSet)})
                        .onDelete(perform: order.deleteItems)
                        
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("ordedr placed")
                    } label: {
                        Text("\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                    .modifier(StandardButtonStyle())

                }
                .navigationTitle("🧾 Orders")
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\n Please add an appetizer!")
                }
            }
        }
    }
    

}

#Preview {
    OrderView()
}
