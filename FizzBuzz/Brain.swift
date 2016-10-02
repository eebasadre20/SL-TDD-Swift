//
//  Brain.swift
//  FizzBuzz
//
//  Created by Piktochart-Edsil on 10/1/16.
//  Copyright © 2016 eebasadre.co. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> String {
        if isDivisibleByFifteen(number) {
            return "FizzBuzz"
        } else if isDivisibleByFive(number) {
            return "Buzz"
        } else if isDivisibleByThree(number){
            return "Fizz"
        } else {
            return "\(number)"
        }
    }

}