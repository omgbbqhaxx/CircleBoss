//
//  GameScene.swift
//  Circle Boss
//
//  Created by Yasin Aktimur on 28.11.2019.
//  Copyright © 2019 Yasin Aktimur. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit


class GameScene: SKScene {
    
    var mycircle :SKShapeNode!
    
    var outCircle:SKShapeNode!
    var inCircle:SKSpriteNode!
    
    
    var  hasgone = false
    override func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor(rgb: 0x353535)
        
        mycircle = SKShapeNode(circleOfRadius: 100 ) // Create circle
        mycircle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        mycircle.strokeColor = SKColor.black
        mycircle.glowWidth = 1.0
        mycircle.fillColor = SKColor.orange
        addChild(mycircle)
        
        
        
        outCircle = SKShapeNode(circleOfRadius: 230 ) // Create circle
        outCircle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        outCircle.strokeColor = SKColor.black
        //outCircle.glowWidth = 20.0
        outCircle.lineWidth = 13.0
        //outCircle.fillColor = SKColor.red
        addChild(outCircle)
        
        
        
        
        
        
        
        
        //mycircle = childNode(withName: "circle") as! SKSpriteNode
        
        //mycircle.physicsBody?.affectedByGravity = false
        //physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         print("touchesBegan")
        
       mycircle.removeAllActions()
        let ScalePBup = SKAction.scaleX(to: 6, y: 6, duration: 2)
            mycircle.run(ScalePBup)
            
    }
    
  
     
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("tend of theee")
        mycircle.removeAllActions()
         let ScalePBup = SKAction.scaleX(to: 0, y: 0, duration: 3)
         mycircle.run(ScalePBup)
    }
  
}
