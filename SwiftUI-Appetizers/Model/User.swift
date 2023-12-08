//
//  User.swift
//  SwiftUI-Appetizers
//
//  Created by Yakov Petrukhin on 2023-12-08.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
