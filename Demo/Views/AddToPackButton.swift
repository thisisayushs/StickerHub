//
//  AddToPackButton.swift
//  Demo
//
//  Created by Ayush Singh on 11/21/24.
//

import SwiftUI

struct AddToPackButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 340, height: 70)
                .foregroundStyle(LinearGradient(stops: [
                    Gradient.Stop(color: Color(red: 1, green: 0.93, blue: 0.81), location: 0.00),
                    Gradient.Stop(color: Color(red: 1, green: 0.82, blue: 0.56), location: 0.08),
                    Gradient.Stop(color: Color(red: 0.88, green: 0.52, blue: 0.6), location: 0.40),
                    Gradient.Stop(color: Color(red: 0.75, green: 0.53, blue: 0.72), location: 0.61),
                    Gradient.Stop(color: Color(red: 0.2, green: 0.57, blue: 0.81), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0, y: 0.5),
                    endPoint: UnitPoint(x: 1, y: 0.5)))
            
            Text("Add to pack")
                .foregroundStyle(.white)
                .font(.system(size: 25))
                .fontWeight(.bold)
                
                         
                
        }
    }
}

#Preview {
    AddToPackButton()
}
