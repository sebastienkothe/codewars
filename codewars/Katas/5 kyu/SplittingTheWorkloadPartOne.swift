//
//  SplittingTheWorkloadPartOne.swift
//  codewars
//
//  Created by Sébastien Kothé on 28/02/2022.
//

import Foundation

func splitlist(_ list: [Int]) -> ([Int], [Int]) {
    guard list.count > 0 else { return ([], [])}
    var a = [Int]()
    var b = [Int]()
    let half = list.reduce(0, +) / 2
    var counter = 0
    var indexes = [Int]()
    var digits = [Int]()
    var difference = 100
    var tempDiff = Int()
    var bestIndexes = [Int]()
    
    while counter < 2000 {
        let numberOfElements = Int.random(in: 1...list.count)
        
        while indexes.count != numberOfElements {
            let randomIndex = Int.random(in: 0..<list.count)
            guard !indexes.contains(randomIndex) else { continue }
            indexes.append(randomIndex)
        }
        
        indexes = indexes.sorted()
        
        for i in indexes {
            digits.append(list[i])
        }
        
        tempDiff = half - digits.reduce(0, +)
        if tempDiff < difference && tempDiff >= 0 {
            difference = half - digits.reduce(0, +)
            bestIndexes.removeAll()
            bestIndexes.append(contentsOf: indexes)
        }
        
        digits.removeAll()
        indexes.removeAll()
        counter += 1
    }
    
    let z = list.enumerated().filter { !(bestIndexes.contains($0.offset)) }.map { $0.offset }
    a = list.enumerated().filter { z.contains($0.offset) }.map { $0.element }
    b = list.enumerated().filter { bestIndexes.contains($0.offset) }.map { $0.element }
    
    return a.reduce(0, +) > b.reduce(0, +) ? (b, a) : (a, b)
}
