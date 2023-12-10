//
//  CustomModifiers.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-09.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
