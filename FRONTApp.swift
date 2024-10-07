//
//  FRONTApp.swift
//  FRONT
//
//  Created by iOS Lab UDLAP on 24/09/24.
//

import SwiftUI

@main
struct AgriKool: App {
    @StateObject var settings = GlobalSettings()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}
