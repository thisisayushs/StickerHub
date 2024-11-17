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
        NavigationStack {
            ZStack {
                BackgroundView()
                VStack {
                    
                    HStack {
                        HeaderView()
                        Spacer()
                        NavigationLink(destination: SettingsView()) {
                            RoundButtonView()
                        }
                    }
                    
                    NavigationStack {
                        List {
                            
                            ForEach(0..<4) { i in
                                
                                ZStack {
                                    CardView()
                                    CardContentView()
                                    NavigationLink(destination: PackView()) {
                                        EmptyView()
                                        
                                        
                                    }.opacity(0.0)
                                    
                                }
                                
                            }
                            .listRowInsets(EdgeInsets.init(top: 10, leading: -15, bottom: 10, trailing: -15))
                            .listRowBackground(Color.clear)
                            .listRowSeparatorTint(.clear)
                            
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: .infinity, height: 100)
                                .foregroundStyle(.clear)
                                .listRowInsets(EdgeInsets.init(top: 10, leading: -15, bottom: 10, trailing: -15))
                                .listRowBackground(Color.clear)
                                .listRowSeparatorTint(.clear)
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                            .scrollContentBackground(.hidden)
                            .background(BackgroundView())
                        
                        
                        
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
        }.accentColor(.white)
    }
}




#Preview {
    PackListView()
}
