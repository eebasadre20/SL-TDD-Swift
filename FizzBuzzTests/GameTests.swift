//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Piktochart-Edsil on 10/2/16.
//  Copyright © 2016 eebasadre.co. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        expect(self.game.score).to(equal(0))
    }
    
    func testOnPlayScoreIncremented() {
        game.play("1")
        expect(self.game.score).to(equal(1))
    }
    
    func testIfMoveIsRightFizz() {
        game.score = 2
        let result = game.play("Fizz")
        expect(result).to(equal(true))
    }
    
    func testIfMoveIsWrongFizz() {
        game.score = 1
        let result = game.play("Fizz")
        expect(result).to(equal(false))
    }
    
    func testIfMoveIsRightBuzz() {
        game.score = 4
        let result = game.play("Buzz")
        expect(result).to(equal(true))
    }
    
    func testIfMoveIsWrongBuzz() {
        game.score = 1
        let result = game.play("Buzz")
        expect(result).to(equal(false))
    }
    
    func testIfMoveIsRightFizzBuzz() {
        game.score = 14
        let result = game.play("FizzBuzz")
        expect(result).to(equal(true))
    }
    
    func testIfMoveIsWrongFizzBuzz() {
        game.score = 1
        let result = game.play("FizzBuzz")
        expect(result).to(equal(false))
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let result = game.play("2")
        expect(result).to(equal(true))
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let result = game.play("3")
        expect(result).to(equal(false))
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play("Fizz")
        expect(self.game.score).to(equal(1))
    }


}
