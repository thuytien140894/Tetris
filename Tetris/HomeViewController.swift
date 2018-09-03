//
//  ViewController.swift
//  Tetris
//
//  Created by Tien Thuy Ho on 9/1/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let startGameButton = UIButton()
    var router: AppNavigationProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        
        setupStartGameButton()
    }
    
    private func setupStartGameButton() {
        
        startGameButton.setTitle("Start New Game", for: .normal)
        startGameButton.backgroundColor = .blue
        
        view.addSubview(startGameButton)
        layoutStartGameButton()
        startGameButton.addTarget(self, action: #selector(startGame), for: .touchUpInside)
    }
    
    private func layoutStartGameButton() {
        
        startGameButton.translatesAutoresizingMaskIntoConstraints = false
        let quarterOfScreenHeight = UIScreen.main.bounds.height / 4
        let buttonConstraints = [
            startGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startGameButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -quarterOfScreenHeight)
        ]
        NSLayoutConstraint.activate(buttonConstraints)
    }
    
    @objc private func startGame() {
        router?.presentGameView()
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
