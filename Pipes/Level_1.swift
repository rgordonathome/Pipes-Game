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
        
        //Background
        let background = SKSpriteNode(imageNamed: "Background3")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        background.zPosition = 0
        addChild(background)
        
        //Add grid
        for j in stride(from: 425, through: 125, by: -50) {
            for i in stride(from: 225, through: 525, by: 50) {
                let boxGrid = SKShapeNode(rect: CGRect(x: i, y: j, width: 50, height: 50))
                boxGrid.zPosition = 1
                boxGrid.fillColor = SKColor.clear
                boxGrid.name = "boxGRid-\(boxCount)"
                addChild(boxGrid)
                
                boxCount += 1
                
                let box = SKShapeNode(rect: CGRect(x: self.frame.size.width/2 - 50, y: self.frame.size.height/2 - 50, width: 100, height: 100))
                box.zPosition = 2
                box.fillColor = SKColor.black
                addChild(box)
            }
        }
        
    }
}
