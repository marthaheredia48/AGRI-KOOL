//
//  FALLING LEAVES.swift
//  AGRI-KOOL
//
//  Created by iOS Lab on 06/10/24.
//

import Foundation
import SwiftUI

//
//  BIENVENIDAFONDO.swift
//  FRONT
//
//  Created by iOS Lab on 27/09/24.
//

import SwiftUI

struct FALLING: View {
    var body: some View {
        ZStack {
            Color.SPROUT
                .ignoresSafeArea(.container)
                .opacity(0.8)
            
            VStack {
                Image("LEAF")
                    .resizable()
                    .frame(width:400, height:400)
                    .edgesIgnoringSafeArea(.all)
                    .foregroundStyle(.white.opacity(0.8))
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 150)
                    .opacity(0.8)

            }
        }
        
    }
}
        
        #Preview {
            
            FALLING()
        }
    

