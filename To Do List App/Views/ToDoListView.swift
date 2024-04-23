//
//  ToDoListItemsView.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    // append todos
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

#Preview {
    ToDoListView()
}
