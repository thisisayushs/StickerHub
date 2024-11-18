//
//  BackgroundView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct BackgroundView: View {
    var imageName = "blue"
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            
    }
}

#Preview {
    BackgroundView()
}
