//
//  SettingsView.swift
//  Demo
//
//  Created by Ayush Singh on 11/15/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            BackgroundView().overlay {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack {
                Text("Restore purchase")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                UpgradeButton()
            }
        }
    }
}

#Preview {
    SettingsView()
}
