//
//  Game.swift
//  RGBullsEyeApp
//
//  Created by Le Minh Khanh on 18/04/2022.
//

import Foundation
import SwiftUI

class Game {
    var taget = RGB (
        red: Double.random(in: 0...1),
        green: Double.random(in: 0...1),
        blue: Double.random(in: 0...1)
    )
    
    func check(guess: RGB) -> Int {
        let rDiff = guess.red - taget.red
        let gDiff = guess.green - taget.green
        let bDiff = guess.blue - taget.blue
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100.0 + 0.5)
    }
}
