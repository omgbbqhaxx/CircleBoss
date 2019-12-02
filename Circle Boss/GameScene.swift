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


class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var mycircle :SKShapeNode!
    var outCircle:SKShapeNode!
    var inCircle:SKSpriteNode!
    var  hasgone = false
    
    
    enum PhysicsCategory {
         static let mycircle: UInt32 =  0x1 << 0
         static let outCircle: UInt32 =  0x1 << 1
         static let inCircle: UInt32 = 0x1 << 2
    }
    
    
    
    
   
    
    override func didMove(to view: SKView) {

        
        
        
        self.physicsWorld.contactDelegate = self
        
        
        self.backgroundColor = UIColor(rgb: 0x353535)
        mycircle = SKShapeNode(circleOfRadius: 100 ) // Create circle
        mycircle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        mycircle.strokeColor = SKColor.black
        mycircle.lineWidth = 3.0
        mycircle.fillColor = SKColor.orange
        mycircle.physicsBody?.categoryBitMask = PhysicsCategory.mycircle
        mycircle.physicsBody?.contactTestBitMask = PhysicsCategory.outCircle
        mycircle.physicsBody?.collisionBitMask = PhysicsCategory.outCircle
        
        mycircle.physicsBody?.isDynamic = false
        mycircle.name = "mycircle"
        
        addChild(mycircle)
        
        outCircle = SKShapeNode(circleOfRadius: 230 ) // Create circle
        outCircle.position = CGPoint(x: 0, y: 0)  // Center (given scene anchor point is 0.5 for x&y)
        outCircle.strokeColor = SKColor.black
        outCircle.physicsBody?.categoryBitMask = PhysicsCategory.outCircle
        outCircle.physicsBody?.contactTestBitMask = PhysicsCategory.mycircle
        outCircle.physicsBody?.collisionBitMask = PhysicsCategory.mycircle
         
        outCircle.physicsBody?.isDynamic = false
        outCircle.name =  "outCircle"
        outCircle.lineWidth = 13.0
        addChild(outCircle)
        
        
        
        
     
      
        
        
         
    }
    


    func didBegin(_ contact: SKPhysicsContact) {

     
        print("test")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // print("touchesBegan")
       mycircle.removeAllActions()
        let ScalePBup = SKAction.scaleX(to: 6, y: 6, duration: 2)
            mycircle.run(ScalePBup)
            
    }
    
  
     
    
    
    
     
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       // print("tend of theee")
        mycircle.removeAllActions()
         let ScalePBup = SKAction.scaleX(to: 0, y: 0, duration: 3)
         mycircle.run(ScalePBup)
    }
  
}
