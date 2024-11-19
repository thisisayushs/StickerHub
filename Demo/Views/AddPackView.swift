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
            }
                        
        }
        
    }


#Preview {
    AddPackView()
}
