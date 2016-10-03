//
//  Game.swift
//  FizzBuzz
//
//  Created by Piktochart-Edsil on 10/2/16.
//  Copyright © 2016 eebasadre.co. All rights reserved.
//

import Foundation
import SwiftyJSON

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        let result = brain.check(score + 1)
        
        if result == move {
            score++
            return true
        } else {
            return false
        }
    }
}