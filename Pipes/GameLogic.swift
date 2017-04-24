//
//  GameLogic.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-04-24.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import Foundation

class GameLogic {
    
    // Properties
    
    // Initializers
    init() {
        
    }
    
    // Methods
    func map( x: Int, y: Int) -> (Int, Int) {
        var x = x
        var y = y
        
        //Map the grid value to a 1-7 value becuase the grid is 7x7.
        //Take away bounradies of the grid.
        x = x - 125
        y = y - 75
        
        //Divide by the width and height of the grid quare.
        x = x/50
        x -= 1
        y = y/50
        
        return (x, y)
    }
    func oppositeMap(x: Int, y: Int) -> (Int, Int) {
        var x = x
        var y = y
        
        x = x+1
        x = x*50
        y = y*50
        
        x = x + 125
        y = y + 75
        
        return (x, y)
    }

    
}
