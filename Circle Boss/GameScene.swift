//
//  GameScene.swift
//  Circle Boss
//
//  Created by Yasin Aktimur on 28.11.2019.
//  Copyright © 2019 Yasin Aktimur. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var mycircle :SKShapeNode!
    var  hasgone = false
    override func didMove(to view: SKView) {
        
        
        mycircle = SKShapeNode(circleOfRadius: 100 ) // Create circle
        mycircle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        mycircle.strokeColor = SKColor.black
        mycircle.glowWidth = 1.0
        mycircle.fillColor = SKColor.orange
        addChild(mycircle)
        
        
        //mycircle = childNode(withName: "circle") as! SKSpriteNode
        
        //mycircle.physicsBody?.affectedByGravity = false
        //physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         print("touchesBegan")
        
       mycircle.removeAllActions()
        let ScalePBup = SKAction.scaleX(to: 5, y: 5, duration: 2)
            mycircle.run(ScalePBup)
            
    }
    
  
     
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("tend of theee")
        mycircle.removeAllActions()
         let ScalePBup = SKAction.scaleX(to: 0, y: 0, duration: 3)
         mycircle.run(ScalePBup)
    }
  
}
