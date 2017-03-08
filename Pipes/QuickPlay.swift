//
//  QuickPlay.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-03-08.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class QuickPlay: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        //Add background image
        let background = SKSpriteNode(imageNamed: "Background2")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        addChild(background)
        
        //Add text for Pipes Title
        let Levels = SKLabelNode(fontNamed: "Helvetica")
        Levels.text = "QuickPlay"
        Levels.fontSize = 64
        Levels.fontColor = SKColor.black
        Levels.position = CGPoint(x: size.width/2, y: size.height*0.75)
        addChild(Levels)
        
        //Add UNDER CONSTRUCTION
        let quick = SKLabelNode(fontNamed: "Helvetica")
        quick.text = "UNDER CONSTRUCTION"
        quick.fontSize = 64
        quick.fontColor = SKColor.black
        quick.position = CGPoint(x: size.width/2, y: size.height*0.6586)
        addChild(quick)
    }
}
