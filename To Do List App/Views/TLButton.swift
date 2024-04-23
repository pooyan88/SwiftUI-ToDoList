//
//  TLButton.swift
//  To Do List App
//
//  Created by Pooyan J on 2/2/1403 AP.
//

import SwiftUI

struct TLButton: View {
    
    var title: String
    var backgroundColor: Color
    var action: ()->()
    var body: some View {
        Button(action: {
            action()
        },
               label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
            }
        })
    }
}

#Preview {
    TLButton(title: "Value", backgroundColor: .red, action: {
        
    })
}
