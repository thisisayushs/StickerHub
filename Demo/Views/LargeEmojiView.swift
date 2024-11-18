//
//  LargeEmojiView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI
import Sticker

struct LargeEmojiView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                VStack {
                    
                    Spacer()
                    VStack {
                        Text("❄️")
                            .font(.system(size: 172))
                        
                            .stickerEffect()
                            .stickerMotionEffect(.dragGesture(intensity: 0.5))
                            .stickerCheckerScale(0.0)
                            .stickerCheckerIntensity(0.0)
                            .stickerColorIntensity(0.0)
                            .stickerNoiseScale(10)
                            .stickerNoiseIntensity(4)
                            .stickerLightIntensity(0.0)
                            .stickerBlend(1)
                        
                        
                        
                        
                        VStack {
                            HStack {
                                
                                Text("Part of the")
                                Text("Cozy Christmas ❄️").foregroundStyle(.white)
                                
                            }
                            Text("Sticker Hub pack")
                        }
                    }
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundStyle(.white.opacity(0.5))
                    
                    Spacer()
                    HStack {
                        LargeButtonView()
                        RoundButtonView(iconName: "square.and.arrow.up", offSet: 4, iconSize: 20, circleDiameter: 50)
                            .padding(.bottom, 40)
                    }.padding(.leading, 52)
                }
            }.toolbar(content: {
                ToolbarItem {
                    Menu {
                        Button(action: {}, label: {
                            Label("Save emoji", systemImage: "arrow.down")
                        })
                        Button(action: {}, label: {
                            Label("Save whole pack", systemImage: "arrow.down")
                        })
                        
                        Button(role: .destructive, action: {}, label: {
                            Label("Delete from pack", systemImage: "trash")
                        })
                        
                    } label: {
                        RoundButtonView(iconName: "ellipsis", iconSize: 17, circleDiameter: 38)
                    }
                    
                    
                }
            })
        }
    }
}
#Preview {
    LargeEmojiView()
}
