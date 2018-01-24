//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(_ args: [Int]) -> Int {
        let sum = args.reduce(0) { i, j in
            i + j
        }
        return sum
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    public func avg(_ args: [Int]) -> Int {
        return add(args) / count(args)
    }
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public func multiply(_ args: [Int]) -> Int {
        let product = args.reduce(1) {i, j in
            i * j
        }
        return product
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
}
