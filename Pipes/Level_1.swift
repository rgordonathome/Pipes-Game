//
//  Level_1.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-03-29.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class level1: SKScene  {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        let background = SKSpriteNode(imageNamed: "Background3")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        background.zPosition = 0
        addChild(background)
    }
}
