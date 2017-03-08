//
//  LevelSelect.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-03-06.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class LevelSelect: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        //Add background image
        let background = SKSpriteNode(imageNamed: "Background2")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        addChild(background)
        
        //Add text for Pipes Title
        let Levels = SKLabelNode(fontNamed: "Helvetica")
        Levels.text = "Levels"
        Levels.fontSize = 64
        Levels.fontColor = SKColor.black
        Levels.position = CGPoint(x: size.width/2, y: size.height*0.75)
        addChild(Levels)
    }
}
