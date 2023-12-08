//
//  OrderView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
//                    .onDelete(perform: { indexSet in //index set comes from foreach
//                        orderItems.remove(atOffsets: indexSet)
                    .onDelete(perform: deleteItems)
                    
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("ordedr placed")
                } label: {
                    APButton(title: "99.99 - Place Order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
