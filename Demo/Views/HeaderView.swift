//
//  HeaderView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct HeaderView: View {
    var title = "Your Emoji"
    var iconName: String = "gearshape.fill"
    var subTitleText = ""
    var body: some View {
        VStack(spacing: -18) {
            HStack {
                Text(title)
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Spacer()
                
               // RoundButtonView(iconName: iconName)
            }
            HStack {
                Text(subTitleText)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.4))
                Spacer()
            }.padding(.horizontal, 20)
            
        }
    }
}

#Preview {
    HeaderView()
}
