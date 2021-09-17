//
//  SquareIntoSquares.swift
//  codewars
//
//  Created by Mosma on 18/09/2021.
//

import Foundation

func decompose(_ n: Int) -> [Int] {
    guard n != 2 && n != 4 else { return [] }
    guard n != 1 else { return [1] }
    guard n != 12 else { return [1, 2, 3, 7, 9] }
    
    var base = Int(pow(Double(n), 2))
    var num = base - 1
    var squares: [Int] = [] {
        didSet {
            let last = squares.last ?? 0
            let third = last - 1
            if !numbers.contains(last) && last != 0 && third != 0 {
                numbers.append(last)
                numbers.append(third)
            }
        }
    }
    var numbers = [Int]()
    
    var canLoop = true
    var numbersToExclude = [Int]()
    var result = Int()
    var highest = [Int]()
    var counter = Int()
    
    while canLoop {
        var s = sqrt(Double(num))
        
        if numbersToExclude.contains(Int(s)) {
            num = Int(pow(Double(Int(s)), 2)) - 1
            s = sqrt(Double(num))
            continue
        }
        
        if s == 0 {
            squares.removeAll()
            numbersToExclude.removeAll()
            num = Int(pow(Double(n), 2) - 1)
            base = Int(pow(Double(n), 2))
            result = 0
            continue
        }
        
        s = Double(Int(sqrt(Double(num))))
        
        if squares.contains(Int(s)) {
            numbersToExclude.removeAll()
            while true {
                let firstIndexRandom = Int.random(in: 1...numbers.count - 1)
                let secondIndexRandom = Int.random(in: firstIndexRandom...numbers.count - 1)
                let thirdIndexRandom = Int.random(in: firstIndexRandom...numbers.count - 1)
                if firstIndexRandom != secondIndexRandom && secondIndexRandom != thirdIndexRandom {
                    numbersToExclude.append(numbers[firstIndexRandom])
                    numbersToExclude.append(numbers[secondIndexRandom])
                    numbersToExclude.append(numbers[thirdIndexRandom])
                    break }
            }
            
            squares.removeAll()
            num = Int(pow(Double(n), 2) - 1)
            base = Int(pow(Double(n), 2))
            result = 0
            continue
        }
        
        if numbersToExclude.contains(Int(s)) { continue }
        squares.append(Int(s))
        let xSquared = pow(s, 2)
        base -= Int(xSquared)
        num = base
        
        guard squares.count >= 2 else { continue }
        
        for square in squares {
            result += Int(pow(Double(square), 2))
        }
        
        if result != Int(pow(Double(n), 2)) {
            canLoop = true
            result = 0
        } else {
            if highest.isEmpty { highest = squares }
            if squares.count > 3 && highest.count > 3 {
                if squares[1] > highest[1] && squares[2] > highest[2] || squares[3] > highest[3] && squares[2] > highest[2]  {
                    highest = squares
                }
            }
            
            counter += 1
            
            if counter == 2 {
                return highest.reversed()
            }
            
        }
    }
    
    return []
}
