//
//  NextBiggerNumberWithTheSameDigits.swift
//  codewars
//
//  Created by Sébastien Kothé on 27/02/2022.
//

import Foundation

func nextBigger(num: Int) -> Int? {
    var largerNum: Int? = num
    var largeNumAsArr = [0]
    
    while (largeNumAsArr.count != 0) {
        largerNum! += 1
        largeNumAsArr = String(largerNum!).compactMap { $0.wholeNumberValue }
        var numbers = String(num).compactMap { $0.wholeNumberValue }
        if numbers.sorted(by: >) == numbers { return nil }
        for digit in largeNumAsArr where numbers.contains(digit) {
            numbers.remove(at: numbers.firstIndex(of: digit)!)
            largeNumAsArr.remove(at: largeNumAsArr.firstIndex(of: digit)!)
        }
    }
    
    return largerNum
}
