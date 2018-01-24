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
    // Addition function for two Integers
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    // Addition function for two "coordinates" (tuples)
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // Addition function for an array of Integers
    public func add(_ args: [Int]) -> Int {
        let sum = args.reduce(0) { i, j in
            i + j
        }
        return sum
    }
    
    // Addition function for two String to Integer Dictionaries
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    // Subtraction function for two Integers
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    // Subtraction function for two "coordinates" (tuples)
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    // Subtraction function for two String to Integer Dictionaries
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    // Counts the number of elements in an array of Integers
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    // Calculates the average of Integers in an array
    public func avg(_ args: [Int]) -> Int {
        return add(args) / count(args)
    }
    
    // Multiplication function for two Integers
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    // Multiplication function for an array of Integers
    public func multiply(_ args: [Int]) -> Int {
        let product = args.reduce(1) {i, j in
            i * j
        }
        return product
    }
    
    // Division function for two Integers
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    // Function for performing a math operation on two Integers
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    // Function for performing math operation son an array of Integers
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        let result = args.reduce(beg) {i, j in
            op(i, j)
        }
        return result
    }
}
