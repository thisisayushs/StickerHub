//
//  LargeEmojiView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI

struct LargeEmojiView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HStack {
                    RoundButtonView(iconName: "chevron.left")
                    Spacer()
                    RoundButtonView(iconName: "ellipsis")
                }.padding(.horizontal)
                Spacer()
                VStack {
                Text("🥮")
                    .font(.system(size: 172))
                    HStack {
                        Text("Part of the")
                        Text("🍂 Fall vibes").foregroundStyle(.white)
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
        }
    }
}

#Preview {
    LargeEmojiView()
}