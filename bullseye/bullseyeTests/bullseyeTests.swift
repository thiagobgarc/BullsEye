//
//  bullseyeTests.swift
//  bullseyeTests
//
//  Created by Skills Academy 58 on 5/30/23.
//

import XCTest
@testable import bullseye

final class bullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
       game = nil
    }

    func testScorePositive() {
        var guess = game.target + 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        var guess = game.target - 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testNewRound() {
        game.startNEwRound(points: 100)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
    func testScoreExact() {
        var guess = game.target
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 200)
    }
    
    func testScoreClose() {
        var guess = game.target + 2
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 98 + 50)
    }
    
    func testRestart() {
        game.startNEwRound(points: 100)
        XCTAssertNotEqual(game.score, 0)
        XCTAssertNotEqual(game.round, 1)
        game.restart()
        XCTAssertEqual(game.score, 0)
        XCTAssertEqual(game.round, 1)
    }
}
