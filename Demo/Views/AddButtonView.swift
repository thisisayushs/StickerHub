//
//  AddButtonView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI

struct AddButtonView: View {
    var iconName = "plus"
    var title = "Add pack"
    var body: some View {
        VStack {
            Image(systemName: iconName)
            .foregroundStyle(.white)
                .font(.system(size: 28))
                .fontDesign(.rounded)
                .fontWeight(.bold)
                
                .padding(.horizontal, 28)
                .padding(.vertical, 16)
                .background(.ultraThinMaterial)
                
                .clipShape(RoundedRectangle(cornerRadius: 50))
            
            Text(title)
                .font(.system(size: 17))
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundStyle(.white.opacity(0.5))
                .padding(.vertical, 3)
            
        }
    }
}

#Preview {
    AddButtonView()
}
