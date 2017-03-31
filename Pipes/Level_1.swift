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
        for j in stride(from: 488, through: 38, by: -75) {
            for i in stride(from: 187, through: 637, by: 75) {
                let boxGrid = SKShapeNode(rect: CGRect(x: i, y: j, width: 75, height: 75))
                boxGrid.zPosition = 1
                boxGrid.fillColor = SKColor.clear
                boxGrid.name = "boxGRid-\(boxCount)"
                addChild(boxGrid)
                
                boxCount += 1
            }
        }
        
    }
}
