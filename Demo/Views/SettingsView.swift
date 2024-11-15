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
                
                Text("Settings")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("Background")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundStyle(.white.opacity(0.5))
                    .fontWeight(.semibold)
                
                HStack(spacing: 18) {
                    BackgroundSelectorView(imageName: "default")
                    ForEach(["gray", "blue", "green", "red"], id: \.self) { image in
                        
                        BackgroundSelectorView(imageName: image, isSelected: false)
                    }
                    
                }.padding()
                
                HelpButton().padding(.vertical)
                
                Spacer()
                
                VStack {
                    
                    Text("Restore purchase")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    UpgradeButton()
                }.padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
