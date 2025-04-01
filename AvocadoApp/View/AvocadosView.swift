//
//  AvocadosView.swift
//  AvocadoApp
//
//  Created by Abiodun Osagie on 01/04/2025.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocadolaunch")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240,height: 240)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(
                    .easeInOut(duration: 1.5)
                    .repeatForever(autoreverses: true), value: pulsateAnimation
                )
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                   
                
                Text("""
 Creamy, green, and full of nutrients!
 Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for
 breakfast, lunch, dinner and more!
 """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundStyle(.colorGreenLight)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640)
                
            }//: VSTACK
            .padding()
            Spacer()
        }//: VSTACK
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
        
        
    }
}


// MARK: - PREVIEW
#Preview {
    AvocadosView()
        
}
