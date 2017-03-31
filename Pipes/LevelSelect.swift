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
        var gridCount : Int = 1
        
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
        
        //Make grid for the levels
        for j in stride(from: size.height*0.60, through: size.height*0.15, by: -60) {
            for i in stride(from: size.width*0.25, through: size.width*0.75, by: 60) {
                
                //Add level numbers
                let levelNumber = SKLabelNode(fontNamed: "Helvetica")
                levelNumber.text = String(gridCount)
                levelNumber.fontSize = 15
                levelNumber.fontColor = SKColor.black
                levelNumber.zPosition = 51
                levelNumber.position = CGPoint(x: i+30, y: j+25)
                addChild(levelNumber)
                
                //Add boxes for levels
                let grid = SKShapeNode(rect: CGRect(x: i, y: j, width: 60, height: 60))
                grid.zPosition = 50
                grid.fillColor = SKColor.purple
                grid.name = "box-\(gridCount)"
                addChild(grid)
                
                gridCount += 1
            }
        }
    }
    override func mouseDown(with event: NSEvent) {
        
        // Iterate over all child nodes in the scene
        for node in self.children {
            
            // Only check for nodes that have a name of "box" (for level selection)
            if let nodeName = node.name {
                if nodeName.contains("box") {
                    
                    // Then see if the click is within this box
                    if node.contains(event.locationInWindow) {
                        
                        // We've clicked in the box, now get the box number
                        let number = nodeName.components(separatedBy: "-")
                        print("The level selected is: " + number[1])
                        if Int(number[1]) == 1 {
                            let level1Scene = level1(size: size)
                            let revealAnimation = SKTransition.doorsOpenVertical(withDuration: 0.5)
                            view?.presentScene(level1Scene, transition: revealAnimation)
                        }
                        
                    }
                }
            }
            
        }
        
    }
}
