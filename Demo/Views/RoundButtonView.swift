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
    var circleDiameter: CGFloat = 40
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: circleDiameter, height: circleDiameter)
                .foregroundColor(.clear)
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
