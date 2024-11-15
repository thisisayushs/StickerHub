//
//  HelpButton.swift
//  Demo
//
//  Created by Ayush Singh on 11/15/24.
//

import SwiftUI

struct HelpButton: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "info.circle.fill")
                Text("Help")
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 40)
            .foregroundStyle(.white.opacity(0.5))
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 50)
                    .foregroundStyle(.ultraThinMaterial)
                
                
                HStack {
                    Image(systemName: "book.and.wrench.fill")
                    Text("How to add and save Genmoji?")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                
            }
        }
    }
}

#Preview {
    HelpButton()
}
