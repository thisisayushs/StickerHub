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
    var body: some View {
        HStack {
            Text(title)
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            RoundButtonView(iconName: iconName)
        }
    }
}

#Preview {
    HeaderView()
}
