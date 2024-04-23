//
//  HeaderView.swift
//  To Do List App
//
//  Created by Pooyan J on 2/1/1403 AP.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    var subtitle: String
    var backgroundColor: Color
    var angle: Double
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backgroundColor)
                    .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                    .rotationEffect(Angle(degrees: angle))
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                .padding(.top, 30)
            }
            .offset(y: -65)
            Spacer()
        }
    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", backgroundColor: .blue, angle: 15)
}
