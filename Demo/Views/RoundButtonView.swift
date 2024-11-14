//
//  RoundButtonView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct RoundButtonView: View {
    
    var iconName = "gearshape.fill"
    var offSet: CGFloat = 0
    var iconSize: CGFloat = 21
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 40, height: 40)
                .foregroundColor(.clear)
                .frame(width: 40, height: 40)
                .background(Color(red: 0.76, green: 0.76, blue: 0.76).opacity(0.5))
                
                .cornerRadius(100)
                .blur(radius: 0)
                .padding()
            
            Image(systemName: iconName)
                .font(.system(size: iconSize))
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .padding(.bottom, offSet)
            
        }
    }
}

#Preview {
    RoundButtonView()
}
