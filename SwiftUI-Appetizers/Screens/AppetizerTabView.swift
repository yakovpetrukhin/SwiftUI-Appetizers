//
//  ContentView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @State var detailOpen = true
    
    var body: some View {
        TabView {
            ZStack {
                AppetizerListView()
                    .blur(radius: detailOpen ? 15 : 0)
             
                detailOpen ? DetailView(appetizer: MockData.sampleAppetizer) : nil
            }
                .tabItem {
                    Image(systemName: "house")
//                        .environment(\.symbolVariants, .none) // by default the icon is filled even when the non fill
//                                                              // version of sf symbol is used. This line changes it to be the outline
                    Text("Home")
                }
                
            
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
