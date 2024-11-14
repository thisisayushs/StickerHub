//
//  LargeButtonView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI

struct LargeButtonView: View {
    var body: some View {
        
        
        VStack {
            HStack {
                Image(systemName: "arrow.down")
                Text("Save to Photos")
            }
            .foregroundStyle(.white)
            .font(.system(size: 22))
            .fontDesign(.rounded)
            .fontWeight(.bold)
            
            .padding(.horizontal, 28)
            .padding(.vertical, 16)
            .background(.ultraThinMaterial)
            
            .clipShape(RoundedRectangle(cornerRadius: 50))
            
            
            HStack {
                Image(systemName: "arrow.down")
                Text("Download whole pack")
                
            }
            
            .font(.system(size: 17))
            .fontWeight(.bold)
            .fontDesign(.rounded)
            .foregroundStyle(.white.opacity(0.5))
            .padding(.vertical, 3)
            
        }
        
    }
}

#Preview {
    LargeButtonView()
}
