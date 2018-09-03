//
//  TetrisUITests.swift
//  TetrisUITests
//
//  Created by Tien Thuy Ho on 9/1/18.
//  Copyright © 2018 Tien Thuy Ho. All rights reserved.
//

import XCTest

class TetrisUITests: XCTestCase {
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false

        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPressingStartGameShouldTransitionToGameView() {
        
        app.buttons["Start New Game"].tap()
        XCTAssertTrue(app.navigationBars["Tetris.GameView"].exists)
    }
    
    func testPressingCancelShouldReturnToHomePage() {
        
        app.buttons["Start New Game"].tap()
        app.navigationBars["Tetris.GameView"].buttons["Cancel"].tap()
        XCTAssertTrue(app.navigationBars["Tetris.HomeView"].exists)
    }
}
