//
//  HeaderView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Your Emoji")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            RoundButtonView()
        }
    }
}

#Preview {
    HeaderView()
}
