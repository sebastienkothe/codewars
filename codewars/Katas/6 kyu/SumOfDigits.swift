//
//  SumOfDigits.swift
//  codewars
//
//  Created by Sébastien Kothé on 29/01/2022.
//

import Foundation

func digitalRoot(of number: Int) -> Int {
    
    let numberAsIntArray = String(number).compactMap({$0.wholeNumberValue})
    var sum = Int()
    
    sum = numberAsIntArray.reduce(0, +)
    
    let sumAsArr = String(sum).compactMap({$0.wholeNumberValue})
    guard sumAsArr.count > 1 else { return sum }
    return digitalRoot(of: sum)
}
