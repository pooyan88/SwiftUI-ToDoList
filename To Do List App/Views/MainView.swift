//
//  ContentView.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if  !viewModel.currentUserId.isEmpty, viewModel.isSignedIn {
            TabView {
                ToDoListView()
                    .tabItem {
                      Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
