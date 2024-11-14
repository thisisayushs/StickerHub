//
//  RoundButtonView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct RoundButtonView: View {
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
            
            Image(systemName: "gearshape.fill")
                .font(.system(size: 21))
                .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    RoundButtonView()
}
