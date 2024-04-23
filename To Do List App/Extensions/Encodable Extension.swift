//
//  Encodable Extension.swift
//  To Do List App
//
//  Created by Pooyan J on 2/3/1403 AP.
//

import Foundation

extension Encodable {
    
    func toDictionary()-> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
