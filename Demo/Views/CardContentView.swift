//
//  CardContentView.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import SwiftUI

struct CardContentView: View {
    
    @State var content = returnRandomContent()
    
    
    func returnTitle() -> String {
        if content == fallVibes {
            "Fall Vibes"
        } else if content == cozyChristmas {
            "Cozy Christmas"
        } else if content == movie {
            "Cinema Core"
        } else {
            "Uh oh!"
        }
    }
    
    var body: some View {
        
        VStack(spacing: 11) {
            
            HStack(spacing: 32) {
              
                ForEach(content, id: \.self) { item in
                    Text(item)
                        .font(.system(size: 56))
                }
                
            }
            
            VStack {
                Text("23 Stickers")
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
                
                Text(returnTitle())
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                
            }.fontDesign(.rounded)
        }
    }
}

#Preview {
    CardContentView()
}
