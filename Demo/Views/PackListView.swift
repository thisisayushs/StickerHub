//
//  PackListView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI
import VariableBlurView


struct PackListView: View {
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            ScrollView(.vertical) {
                
                VStack {
                    
                    HeaderView()
                    
                    ScrollView {
                        
                                                
                        ForEach(0..<2) { i in
                            ZStack {
                                CardView()
                                CardContentView()
                            }
                        }
                        
                        AdView()
                        
                        ForEach(0..<3) { i in
                            ZStack {
                                CardView()
                                CardContentView()
                                
                            }
                        }
                        
                    }
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
                    AddButtonView()
                }
            }
            
            
            
        }
    }
    
}

#Preview {
    PackListView()
}
