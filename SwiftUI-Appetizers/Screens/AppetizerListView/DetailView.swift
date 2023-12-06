//
//  DetailView.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-05.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Image(systemName: "camera" )
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Rectangle()
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .blur(radius: 10, opaque: true)
        }
    }
}

#Preview {
    DetailView()
}
