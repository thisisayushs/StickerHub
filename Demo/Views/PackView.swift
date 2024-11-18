//
//  PackView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI
import VariableBlurView

struct PackView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                VStack {
                    HeaderView(title: "Cozy Christmas ❄️", iconName: "ellipsis", subTitleText: "40 Stickers")
                    
                    
                    
                    ScrollView(.vertical) {
                        ScrollView {
                            LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()], spacing: 10) {
                                ForEach(0..<40) { _ in
                                    NavigationLink(destination: LargeEmojiView()) {
                                        Text(cozyChristmas.randomElement()!)
                                            .font(.system(size: 50))
                                    }
                                }
                            }
                        }.padding(.bottom, 125)
                    }
                }
                ZStack {
                    VStack {
                        
                        
                        VariableBlurView()
                            .frame(height: 170)
                            .allowsHitTesting(false)
                        
                        Spacer()
                        
                    }.rotationEffect(.degrees(-180))
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        AddButtonView(iconName: "arrow.down", title: "Download pack")
                    }
                }
            }
        }.accentColor(.white)
    }
}

#Preview {
    PackView()
}
