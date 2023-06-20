//
//  GiApp.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

extension Color {
    init(hex: Int) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(UIColor(red: red, green: green, blue: blue, alpha: 1.0))
    }
}


@main
struct GiApp: App {
    var body: some Scene {
        WindowGroup {
            TimeView()
        }
    }
}
