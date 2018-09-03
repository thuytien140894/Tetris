//
//  AppRouter.swift
//  Tetris
//
//  Created by Tien Thuy Ho on 9/2/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import UIKit

protocol AppNavigationProtocol {
    
    var navigationController: UINavigationController { get set }
    var homeViewController: HomeViewController { get set }
    var gameViewController: GameViewController { get set }
    
    func presentGameView()
    func returnToHomeView()
}
class AppRouter: AppNavigationProtocol {
    
    lazy var navigationController: UINavigationController = {
        [unowned self] in
        return UINavigationController(rootViewController: homeViewController)
    }()
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        viewController.router = self
        return viewController
    }()
    
    lazy var gameViewController: GameViewController = {
        let viewController = GameViewController()
        viewController.router = self
        return viewController
    }()
    
    func presentGameView() {
        
        navigationController.pushViewController(gameViewController, animated: true)
    }
    
    func returnToHomeView() {
        
        navigationController.popToRootViewController(animated: true)
    }
}
