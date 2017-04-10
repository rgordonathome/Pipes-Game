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
        let circlePosiitonArray = [250, 450, 300, 400, 350, 400, 300, 200, 300, 350, 450, 350, 300, 300, 400, 250, 350, 300, 450, 250]
        
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
        let circleR1 = SKShapeNode(circleOfRadius: 22)
        circleR1.position = CGPoint(x: circlePosiitonArray[0], y: circlePosiitonArray[1])
        circleR1.zPosition = 2
        circleR1.strokeColor = SKColor.clear
        circleR1.fillColor = SKColor.red
        circleR1.name = "circle-1"
        addChild(circleR1)
        
        //Red Circle 2
        let circleR2 = SKShapeNode(circleOfRadius: 22)
        circleR2.position = CGPoint(x: circlePosiitonArray[2], y: circlePosiitonArray[3])
        circleR2.zPosition = 2
        circleR2.strokeColor = SKColor.clear
        circleR2.fillColor = SKColor.red
        circleR2.name = "circle-2"
        addChild(circleR2)
        
        //Blue Circle 1
        let circleB1 = SKShapeNode(circleOfRadius: 22)
        circleB1.position = CGPoint(x: circlePosiitonArray[4], y: circlePosiitonArray[5])
        circleB1.zPosition = 2
        circleB1.strokeColor = SKColor.clear
        circleB1.fillColor = SKColor.blue
        circleB1.name = "circle-3"
        addChild(circleB1)
        
        //Blue Circle 2
        let circleB2 = SKShapeNode(circleOfRadius: 22)
        circleB2.position = CGPoint(x: circlePosiitonArray[6], y: circlePosiitonArray[7])
        circleB2.zPosition = 2
        circleB2.strokeColor = SKColor.clear
        circleB2.fillColor = SKColor.blue
        circleB2.name = "circle-4"
        addChild(circleB2)

        //Yellow Circle 1
        let circleY1 = SKShapeNode(circleOfRadius: 22)
        circleY1.position = CGPoint(x: circlePosiitonArray[8], y: circlePosiitonArray[9])
        circleY1.zPosition = 2
        circleY1.strokeColor = SKColor.clear
        circleY1.fillColor = SKColor.yellow
        circleY1.name = "circle-5"
        addChild(circleY1)

        //Yellow Circle 2
        let circleY2 = SKShapeNode(circleOfRadius: 22)
        circleY2.position = CGPoint(x: circlePosiitonArray[10], y: circlePosiitonArray[11])
        circleY2.zPosition = 2
        circleY2.strokeColor = SKColor.clear
        circleY2.fillColor = SKColor.yellow
        circleY2.name = "circle-6"
        addChild(circleY2)
        
        //Purple Circle 1
        let circleP1 = SKShapeNode(circleOfRadius: 22)
        circleP1.position = CGPoint(x: circlePosiitonArray[12], y: circlePosiitonArray[13])
        circleP1.zPosition = 2
        circleP1.strokeColor = SKColor.clear
        circleP1.fillColor = SKColor.purple
        circleP1.name = "circle-7"
        addChild(circleP1)
        
        //Purple Circle 2
        let circleP2 = SKShapeNode(circleOfRadius: 22)
        circleP2.position = CGPoint(x: circlePosiitonArray[14], y: circlePosiitonArray[15])
        circleP2.zPosition = 2
        circleP2.strokeColor = SKColor.clear
        circleP2.fillColor = SKColor.purple
        circleP2.name = "circle-8"
        addChild(circleP2)
        
        //Green Circle 1
        let circleG1 = SKShapeNode(circleOfRadius: 22)
        circleG1.position = CGPoint(x: circlePosiitonArray[16], y: circlePosiitonArray[17])
        circleG1.zPosition = 2
        circleG1.strokeColor = SKColor.clear
        circleG1.fillColor = SKColor.green
        circleG1.name = "circle-9"
        addChild(circleG1)
        
        //Green Circle 2
        let circleG2 = SKShapeNode(circleOfRadius: 22)
        circleG2.position = CGPoint(x: circlePosiitonArray[18], y: circlePosiitonArray[19])
        circleG2.zPosition = 2
        circleG2.strokeColor = SKColor.clear
        circleG2.fillColor = SKColor.green
        circleG2.name = "circle-10"
        addChild(circleG2)
    }
    override func mouseDragged(with event: NSEvent) {
        for node in self.children {
            if let nodeName = node.name {
                if nodeName.contains("circle") {
                    if node.contains(event.locationInWindow) {
                        let number = nodeName.components(separatedBy: "-")
                        if String(number[1]) == "1" {
                            print(number[1])
                        }
                        if String(number[1]) == "2" {
                            print(number[1])
                        }
                    }
                }
            }
        }
    }
}

