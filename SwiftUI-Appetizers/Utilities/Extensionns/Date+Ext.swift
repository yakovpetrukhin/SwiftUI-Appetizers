//
//  Date+Ext.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-10.
//

import Foundation

extension Date {
    var eighteenYearsgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
