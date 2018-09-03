//
//  Block.swift
//  Tetris
//
//  Created by Tien Thuy Ho on 9/3/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import SpriteKit
import UIKit

class Block: SKShapeNode {
    
    private var blockSize = CGSize()

    override init() {
        
        super.init()
        
        position = CGPoint(x: 0, y: 0)
        fillColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(size: CGFloat) {
        
        self.init()
        
        blockSize = getSquare(withSize: size)
        let rect = CGRect(origin: position, size: blockSize)
        path = CGPath(rect: rect, transform: nil)
        addAction()
    }
    
    private func getSquare(withSize size: CGFloat) -> CGSize {
        
        return CGSize(width: size, height: size)
    }
    
    private func addAction() {
        
        let fallDown = SKAction.moveTo(y: position.y + 1, duration: 1)
        run(fallDown)
    }
}
