//
//  RGB.swift
//  RGBullsEyeApp
//
//  Created by Le Minh Khanh on 18/04/2022.
//

import Foundation
import SwiftUI

struct RGB {
    var red: Double
    var green: Double
    var blue: Double
}

extension Color {
    init(rgb: RGB, alpha: CGFloat = 1.0) {
        self.init(
            red: rgb.red,
            green: rgb.green,
            blue: rgb.blue
        )
    }
}
