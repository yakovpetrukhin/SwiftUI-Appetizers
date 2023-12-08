//
//  String+Ext.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-07.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailFormat     = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate  = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
