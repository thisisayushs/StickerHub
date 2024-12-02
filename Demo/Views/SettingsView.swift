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
                
                HStack {
                    Image(systemName: "paintpalette.fill")
                    Text("Background")
                }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .foregroundStyle(.white.opacity(0.5))
                        .fontWeight(.semibold)
                
                
                HStack() {
                    BackgroundSelectorView(imageName: "default")
                    ZStack {
                        HStack() {
                            
                            ForEach(["gray", "blue", "green", "red"], id: \.self) { image in
                                
                                BackgroundSelectorView(imageName: image, isSelected: false)
                            }
                            
                        }
                        
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(Color(red: 0.4, green: 0.4, blue: 0.4).opacity(0.5))
                            .frame(maxWidth: 290, maxHeight: 110)
                            
                        
                        Text("Unlock backgrounds with Pro")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            
                            
                    }
                    
                    
                }
                
                HelpButton().padding()
                
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
