//
//  TitlePage.swift
//  Pipes
//
//  Created by Adam Sheeres-Paulicpulle on 2017-02-28.
//  Copyright © 2017 Farquad Labs. All rights reserved.
//

import SpriteKit
import GameplayKit

class TitlePage: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        
        //Add background image
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.size = self.frame.size
        addChild(background)
        
        //Add text for Pipes Title
        let pipesTitle = SKLabelNode(fontNamed: "Helvetica")
        pipesTitle.text = "Pipes"
        pipesTitle.fontSize = 64
        pipesTitle.fontColor = SKColor.black
        pipesTitle.position = CGPoint(x: size.width/2, y: size.height*0.75)
        addChild(pipesTitle)
        
        //Add level select text
        let levelSelect = SKLabelNode(fontNamed: "Helvetica")
        levelSelect.text = "1. Level Select"
        levelSelect.fontSize = 40
        levelSelect.fontColor = SKColor.black
        levelSelect.position = CGPoint(x: size.width/2, y: size.height*0.65)
        addChild(levelSelect)
        
        //Add quick play text
        let quickPlay = SKLabelNode(fontNamed: "Helvetica")
        quickPlay.text = "2. Quick Play"
        quickPlay.fontSize = 40
        quickPlay.fontColor = SKColor.black
        quickPlay.position = CGPoint(x: size.width/2, y: size.height*0.55)
        addChild(quickPlay)
    }
//    override func mouseDown(with event: NSEvent) {
//        if mouse.position.x > 300 {
//            if mouse.position.y >= 590 {
//                let levelSelectScene = TitlePage(size: size)
//                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 0.5)
//                view?.presentScene(levelSelectScene, transition: reveal)
//            }
//        }
//    }
}
