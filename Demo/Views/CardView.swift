//
//  CardView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .foregroundStyle(
                    Color(
                        red: 0.2,
                        green: 0.2,
                        blue: 0.2)
                    .opacity(0.5))
                .frame(height: 160)
                .padding(.horizontal)
            
            
            HStack {
                Spacer()
                VStack {

                    RoundButtonView(iconName: "square.and.arrow.up", offSet: 4, iconSize: 17)
                }.padding(.top, 80)
            }.padding(.horizontal, 24)
                
        }
    }
}

#Preview {
    CardView()
}
