//
//  AdView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct AdView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .foregroundStyle(.white)
                .frame(height: 160)
                .padding(.horizontal)
            HStack {
                VStack {
                    Text("Sticker Hub Pro")
                        .foregroundStyle(Color(red: 0.25, green: 0.25, blue: 0.25))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Remove Ads")
                        .foregroundStyle(Color(red: 0.75, green: 0.75, blue: 0.75))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                .font(.system(size: 25))
                .fontDesign(.rounded)
                .fontWeight(.bold)
                ZStack {
                    RoundedRectangle(cornerRadius: 28)
                        .frame(width: 104, height: 104)
                        .foregroundStyle(
                            MeshGradient(
                                width: 3,
                                height: 3,
                                
                                points: [[0.0, 0.0], [0.5, 0.0], [1.0, 0.0], [0.0, 0.5], [0.5, 0.5], [1.0, 0.5], [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]],
                                colors: [.pink, .orange, .pink, .orange, .pink, .pink, .white, .pink, .blue]
                            )
                            
                        )
                    VStack {
                        Text("Sticker")
                        Text("Hub")
                    }
                    .foregroundStyle(.white)
                    .font(.system(size: 22))
                    .fontDesign(.rounded)
                    .fontWeight(.bold)
                }
                        
                    
                    
            }.padding(.horizontal, 40)
                
        }
    }
}

#Preview {
    AdView()
}
