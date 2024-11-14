//
//  ExampleView.swift
//  Demo
//
//  Created by Ayush Singh on 11/14/24.
//

import SwiftUI
import VariableBlurView

struct ExampleView: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    Image("Sky")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                        .padding()
                }
                .padding(.top, 50)
            }

            VStack {
                VariableBlurView()
                    .frame(height: 200)
                    .allowsHitTesting(false)

                Spacer()
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ExampleView()
}
