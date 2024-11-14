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
            
            VStack {
                HeaderView()
                
                
                ScrollView(.vertical) {
                    
                    
                        
                        ScrollView {
                            
                            
                            ForEach(0..<2) { i in
                                ZStack {
                                    CardView()
                                    CardContentView()
                                }
                            }
                            
                            AdView().padding(.top, 11)
                            
                            ForEach(0..<3) { i in
                                ZStack {
                                    CardView()
                                    CardContentView()
                                    
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
                    AddButtonView()
                }
            }
            
            
            
        }
    }
    
}

#Preview {
    PackListView()
}
