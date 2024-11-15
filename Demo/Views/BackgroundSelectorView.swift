//
//  BackroundSelectorView.swift
//  Demo
//
//  Created by Ayush Singh on 11/15/24.
//

import SwiftUI

struct BackgroundSelectorView: View {
    var imageName: String = "default"
    @State var isSelected: Bool = true
    func returnOpacity() -> CGFloat {
        if isSelected {
            return 1.0
        } else {
            return 0.2
        }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 19.5).stroke(.white.opacity(returnOpacity()), lineWidth: 3)
                .frame(width: 59, height: 81)
            ZStack {
                BackgroundView(imageName: imageName)
                    .frame(width: 50, height: 72)
                    .cornerRadius(15)
            }
                
            
            
        }
    }
}

#Preview {
    BackgroundSelectorView()
}
