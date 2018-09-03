//
//  GameViewController.swift
//  Tetris
//
//  Created by Tien Thuy Ho on 9/1/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import SpriteKit
import UIKit

class GameViewController: UIViewController {
    
    private let gameView = SKView()
    var router: AppNavigationProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupGameView()
        setupNavigationBar()
    }
    
    private func setupGameView() {
        
        view.addSubview(gameView)
        layoutGameView()
    }
    
    private func layoutGameView() {
        
        gameView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            gameView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gameView.widthAnchor.constraint(equalTo: view.widthAnchor),
            gameView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupNavigationBar() {
        
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
    }
    
    @objc private func cancel() {
        
        router?.returnToHomeView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        prepareScene()
    }
    
    private func prepareScene() {
        
        let gameScene = GameScene(size: view.frame.size)
        gameScene.setupScene()
        
        gameView.presentScene(gameScene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
