//
//  GameScene.swift
//  Tetris
//
//  Created by Tien Thuy Ho on 9/2/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import SpriteKit
import UIKit

class GameScene: SKScene {
    
    override func sceneDidLoad() {
        
        super.sceneDidLoad()
        
        backgroundColor = .red
    }
    
    func setupScene() {
        
        let block = Block(size: size.width / 8)
        block.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(block)
    }
}
