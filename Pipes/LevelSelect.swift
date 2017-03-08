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
        background.zPosition = 0
        addChild(background)
        
        //Add text for Pipes Title
        let Levels = SKLabelNode(fontNamed: "Helvetica")
        Levels.text = "Levels"
        Levels.fontSize = 64
        Levels.fontColor = SKColor.black
        Levels.position = CGPoint(x: size.width/2, y: size.height*0.75)
        Levels.zPosition = 50
        addChild(Levels)
        
        //Make grid for the levels.
        for i in stride(from: size.width*0.25, through: size.width*0.75, by: 30) {
            for j in stride(from: size.height*0.15, through: size.height*0.60, by: 30) {
                let grid = SKShapeNode(rect: CGRect(x: i, y: j, width: 28, height: 28))
                grid.zPosition = 50
                addChild(grid)
                for n in 1...140 {
                    let levelNumber = SKLabelNode(fontNamed: "Helvetica")
                    levelNumber.text = "\(n)"
                    levelNumber.position = CGPoint(x: i, y: j)
                    levelNumber.fontSize = 10
                    levelNumber.fontColor = SKColor.black
                    levelNumber.zPosition = 51
                    addChild(levelNumber)
                }
            }
        }
    }
}
