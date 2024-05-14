//
//  User.swift
//  todoliste
//
//  Created by Tekup-mac-2 on 29/4/2024.
//

import Foundation

struct User:  Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
