//
//  ContentView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
            .tabItem { Label("Order", systemImage: "bag") }
            .badge(order.items.count)
        }
        .tint(Color.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
