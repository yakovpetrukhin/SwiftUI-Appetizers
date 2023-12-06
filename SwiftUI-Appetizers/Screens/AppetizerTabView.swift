//
//  ContentView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
//                        .environment(\.symbolVariants, .none) // by default the icon is filled even when the non fill 
//                                                              // version of sf symbol is used. This line changes it to be the outline
                    Text("Home")
                }
                .blur(radius: 15)
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint(Color.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
