//
//  User.swift
//  SamePage
//
//  Created by Claire Eberle on 2/3/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
