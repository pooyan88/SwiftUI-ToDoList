//
//  User.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import Foundation


struct User: Codable {
    let name: String
    let id: String
    let email: String
    let joined: TimeInterval
}
