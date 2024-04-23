//
//  To_Do_List_AppApp.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import SwiftUI
import FirebaseCore

@main
struct To_Do_List_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
