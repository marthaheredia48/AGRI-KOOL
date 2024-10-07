//
//  BIENVENIDAFONDO.swift
//  FRONT
//
//  Created by iOS Lab on 27/09/24.
//

import SwiftUI

struct BIENVENIDAFONDO: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.clear, .rain.opacity(0.8)]),
                           startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("GRANJERO")
                    .resizable()
                    .frame(width:400, height:400)
                    .edgesIgnoringSafeArea(.all)
                    .foregroundStyle(.white.opacity(0.8))
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 250)

            }
        }
        
    }
}
        
        #Preview {
            
            BIENVENIDAFONDO()
        }
    

