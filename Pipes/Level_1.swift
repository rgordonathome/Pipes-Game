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
    
    // Properties
    let logic = GameLogic()
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        //Create variable that allows all the boxes to have an assigned number.
        var boxCount : Int = 0
        
        //Make array of X and Y values for the circles being used.
        let circlePositionArray = [250, 450, 300, 400, 350, 400, 300, 200, 300, 350, 450, 350, 300, 300, 400, 250, 350, 300, 450, 250]
        
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
        
        //Make the grid start at the top left and end at the bottom right.
        for j in stride(from: 425, through: 125, by: -50) {
            for i in stride(from: 225, through: 525, by: 50) {
                
                //Grid
                let gridBox = SKShapeNode(rect: CGRect(x: i, y: j, width: 50, height: 50))
                gridBox.zPosition = 1
                gridBox.fillColor = SKColor.clear
                gridBox.name = "gridBox-\(boxCount)"
                addChild(gridBox)
                
                //Connecting lines (width)
                let connectingBoxWidth = SKShapeNode(rect: CGRect(x: i, y: Int(Double(j)+12.5), width: 50, height: 25))
                connectingBoxWidth.zPosition = 2
                connectingBoxWidth.fillColor = SKColor.clear
                connectingBoxWidth.strokeColor = SKColor.clear
                connectingBoxWidth.name = "ConnectBoxWidth-\(boxCount)"
                addChild(connectingBoxWidth)
                
                //Connecting lines (height)
                let connectingBoxHeight = SKShapeNode(rect: CGRect(x: Int(Double(i)+12.5), y: j, width: 25, height: 50))
                connectingBoxHeight.zPosition = 3
                connectingBoxHeight.fillColor = SKColor.clear
                connectingBoxHeight.strokeColor = SKColor.clear
                connectingBoxHeight.name = "ConnectBoxHeight-\(boxCount)"
                addChild(connectingBoxHeight)
                
                boxCount += 1
            }
        }
        //Add the different circles to be connected by lines.
        //Red circle 1
        let circleR1 = SKShapeNode(circleOfRadius: 22)
        circleR1.position = CGPoint(x: circlePositionArray[0], y: circlePositionArray[1])
        circleR1.zPosition = 2
        circleR1.strokeColor = SKColor.clear
        circleR1.fillColor = SKColor.red
        circleR1.name = "circle-1"
        addChild(circleR1)
        
        //Red Circle 2
        let circleR2 = SKShapeNode(circleOfRadius: 22)
        circleR2.position = CGPoint(x: circlePositionArray[2], y: circlePositionArray[3])
        circleR2.zPosition = 2
        circleR2.strokeColor = SKColor.clear
        circleR2.fillColor = SKColor.red
        circleR2.name = "circle-2"
        addChild(circleR2)
        
        //Blue Circle 1
        let circleB1 = SKShapeNode(circleOfRadius: 22)
        circleB1.position = CGPoint(x: circlePositionArray[4], y: circlePositionArray[5])
        circleB1.zPosition = 2
        circleB1.strokeColor = SKColor.clear
        circleB1.fillColor = SKColor.blue
        circleB1.name = "circle-3"
        addChild(circleB1)
        
        //Blue Circle 2
        let circleB2 = SKShapeNode(circleOfRadius: 22)
        circleB2.position = CGPoint(x: circlePositionArray[6], y: circlePositionArray[7])
        circleB2.zPosition = 2
        circleB2.strokeColor = SKColor.clear
        circleB2.fillColor = SKColor.blue
        circleB2.name = "circle-4"
        addChild(circleB2)
        
        //Yellow Circle 1
        let circleY1 = SKShapeNode(circleOfRadius: 22)
        circleY1.position = CGPoint(x: circlePositionArray[8], y: circlePositionArray[9])
        circleY1.zPosition = 2
        circleY1.strokeColor = SKColor.clear
        circleY1.fillColor = SKColor.yellow
        circleY1.name = "circle-5"
        addChild(circleY1)
        
        //Yellow Circle 2
        let circleY2 = SKShapeNode(circleOfRadius: 22)
        circleY2.position = CGPoint(x: circlePositionArray[10], y: circlePositionArray[11])
        circleY2.zPosition = 2
        circleY2.strokeColor = SKColor.clear
        circleY2.fillColor = SKColor.yellow
        circleY2.name = "circle-6"
        addChild(circleY2)
        
        //Purple Circle 1
        let circleP1 = SKShapeNode(circleOfRadius: 22)
        circleP1.position = CGPoint(x: circlePositionArray[12], y: circlePositionArray[13])
        circleP1.zPosition = 2
        circleP1.strokeColor = SKColor.clear
        circleP1.fillColor = SKColor.purple
        circleP1.name = "circle-7"
        addChild(circleP1)
        
        //Purple Circle 2
        let circleP2 = SKShapeNode(circleOfRadius: 22)
        circleP2.position = CGPoint(x: circlePositionArray[14], y: circlePositionArray[15])
        circleP2.zPosition = 2
        circleP2.strokeColor = SKColor.clear
        circleP2.fillColor = SKColor.purple
        circleP2.name = "circle-8"
        addChild(circleP2)
        
        //Green Circle 1
        let circleG1 = SKShapeNode(circleOfRadius: 22)
        circleG1.position = CGPoint(x: circlePositionArray[16], y: circlePositionArray[17])
        circleG1.zPosition = 2
        circleG1.strokeColor = SKColor.clear
        circleG1.fillColor = SKColor.green
        circleG1.name = "circle-9"
        addChild(circleG1)
        
        //Green Circle 2
        let circleG2 = SKShapeNode(circleOfRadius: 22)
        circleG2.position = CGPoint(x: circlePositionArray[18], y: circlePositionArray[19])
        circleG2.zPosition = 2
        circleG2.strokeColor = SKColor.clear
        circleG2.fillColor = SKColor.green
        circleG2.name = "circle-10"
        addChild(circleG2)
    }
    override func mouseDown(with event: NSEvent) {
        
        //Print the now mappe values of the grid.
        
        let mappedVal = logic.map(x: Int(event.locationInWindow.x), y: Int(event.locationInWindow.y))
        
        print("The mapped values are: ", "\(mappedVal)")
        print("The real values are: ", "\(event.locationInWindow.x)", "&", "\(event.locationInWindow.y)")
        print("The un-mapped func values are: ", "\(logic.oppositeMap(x: mappedVal.0, y: mappedVal.1))")
        
        for node in self.children {
            if let nodeName = node.name {
                if node.contains(event.locationInWindow) {
                    let number = nodeName.components(separatedBy: "-")
                    
                    if nodeName.contains("circle") {
                        //If circle is clicked
                        
                    } else if nodeName.contains("ConnectBoxWidth"){
                        //If Width box is clicked.
                        let colorize = SKAction.colorize(with: SKColor.red, colorBlendFactor: 1, duration: 5)
                        node.run(colorize)
                        print("\(number[1])", "W")
                    } else if nodeName.contains("ConnectiBoxHeight") {
                        //If Height box is clicked.
                        
                        print("\(number[1])", "H")
                    }
                }
            }
        }
    }
}

