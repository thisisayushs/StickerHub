//
//  ButtonView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
            HStack {
                Image(systemName: "plus")
                Text("Add pack")
            }
            .foregroundStyle(.white)
            .font(.system(size: 22))
            .fontDesign(.rounded)
            .fontWeight(.semibold)
            .padding(.horizontal, 115)
            .padding(.vertical, 16)
            
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 50))
            
        
    }
}

#Preview {
    ButtonView()
}
