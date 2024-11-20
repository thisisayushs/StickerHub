//
//  AddPackView.swift
//  Demo
//
//  Created by Ayush Singh on 11/19/24.
//

import SwiftUI
import VariableBlurView

struct AddPackView: View {
    var body: some View {
        ZStack {
            BackgroundView()
             
                
                
                VStack() {
                    VStack(alignment: .leading) {
                        TextField("Enter a name", text: .constant(""))
                            .padding()
                            .foregroundStyle(.white)
                            .font(.title.bold())
                            .fontDesign(.rounded)
                            .tint(.white)
                        
                        Text("0 Emojis").padding(.horizontal)
                            .padding(.vertical, -20)
                            .foregroundStyle(.white.opacity(0.5))
                            .font(.system(size: 17).bold())
                            .fontDesign(.rounded)
                    }
                    
                    Spacer()
                    VStack(alignment: .center) {
                        Text("Time to add a title!").padding(.horizontal)
                            .foregroundStyle(.white)
                            .font(.system(size: 17).bold())
                            .fontDesign(.rounded)
                        Text("You can always change this later.").padding(.horizontal)
                        
                            .foregroundStyle(.white)
                            .font(.system(size: 17).weight(.semibold))
                            .fontDesign(.rounded)
                    }
                    
                    Spacer()
                    
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
                                .sheet(isPresented: .constant(true), content: {
                                    ZStack(alignment: .center) {
                                        RoundedRectangle(cornerRadius: 80)
                                            .frame(width: 222, height: 222)
                                            .foregroundStyle(Color(red: 0.9, green: 0.9, blue: 0.9))
                                        TextField("",text: .constant(""))
                                            .font(.system(size: 75).weight(.semibold))
                                            .fontDesign(.rounded)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundStyle(Color(red: 0.58, green: 0.58, blue: 0.58))
                                            .padding(.leading, 176)
                                            .foregroundStyle(.clear)
                                        
                                    }.accentColor(.clear)
                                    
                                })
                        }
                    }
            }
        

        }

    }


#Preview {
    AddPackView()
}
