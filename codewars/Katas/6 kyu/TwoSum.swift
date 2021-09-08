//
//  TwoSum.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

class Solution {
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        var result = Double()
        var indexes = [Int]()
        
        while result != target {
            let firstIndex = Int.random(in: 0..<numbers.count)
            let secondIndex = Int.random(in: firstIndex..<numbers.count)
            guard firstIndex != secondIndex else { continue }
            result = numbers[firstIndex] + numbers[secondIndex]
            if result == target { indexes = [firstIndex, secondIndex] }
        }
        
        return indexes
    }
}
