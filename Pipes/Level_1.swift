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
        var boxCount : Int = 0
        let circlePosiitonArray = [250, 450, 300, 400, 350, 400, 300, 200]
        //250, 450, 300, 400, 350, 400, 300, 200
        //Background
        let background = SKSpriteNode(imageNamed: "Background3")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        background.zPosition = 0
        addChild(background)
        
        //Title
        let titleText = SKLabelNode(fontNamed: "Helvetica")
        titleText.text = "Level 1"
        titleText.fontSize = 25
        titleText.fontColor = SKColor.black
        titleText.zPosition = 1
        titleText.position = CGPoint(x: 400, y: 550)
        addChild(titleText)
        
        //Add grid
        for j in stride(from: 425, through: 125, by: -50) {
            for i in stride(from: 225, through: 525, by: 50) {
                let boxGrid = SKShapeNode(rect: CGRect(x: i, y: j, width: 50, height: 50))
                boxGrid.zPosition = 1
                boxGrid.fillColor = SKColor.clear
                boxGrid.name = "boxGRid-\(boxCount)"
                addChild(boxGrid)
                
                boxCount += 1
            }
        }
     //Add the different circles to connect the dots
        //Red circle 1
        let circle = SKShapeNode(circleOfRadius: 22)
        circle.position = CGPoint(x: circlePosiitonArray[0], y: circlePosiitonArray[1])
        circle.zPosition = 2
        circle.strokeColor = SKColor.black
        circle.fillColor = SKColor.red
        addChild(circle)
    }
}

