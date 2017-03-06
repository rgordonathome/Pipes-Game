//
//  GameScene.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-02-28.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        var sceneNumber = 0
        
        //Initial Start Page
        if sceneNumber == 0 {
            
            //Add background image
            let background = SKSpriteNode(imageNamed: "Background")
            background.position = CGPoint(x: size.width/2, y: size.height/2)
            background.size = self.frame.size
            addChild(background)
            
            //Add text for Pipes Title
            let pipesTitle = SKLabelNode(fontNamed: "Chalkduster")
            pipesTitle.text = "Start"
            pipesTitle.fontSize = 64
            pipesTitle.fontColor = SKColor.black
            pipesTitle.position = CGPoint(x: size.width/2, y: size.height*0.75)
            addChild(pipesTitle)
        }
        //Level Select
        if sceneNumber == 2 {
            
        }
    }
}
