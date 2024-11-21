//
//  UpgradeButton.swift
//  Demo
//
//  Created by Ayush Singh on 11/15/24.
//

import SwiftUI

struct UpgradeButton: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 340, height: 70)
                .foregroundStyle(Color.white)
            
            Text("Upgrade to Pro")
                .foregroundStyle(
                    LinearGradient(colors: [Color(red: 1, green: 0.7, blue: 0.22), Color(red: 0.86, green: 0.53, blue: 0.6), Color(red: 0.18, green: 0.57, blue: 0.81)], startPoint: .leading, endPoint: .trailing)
                )
                .font(.system(size: 25))
                .fontWeight(.bold)
                
                         
                
        }
    }
}

#Preview {
    UpgradeButton()
}
