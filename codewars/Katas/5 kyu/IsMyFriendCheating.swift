//
//  IsMyFriendCheating.swift
//  codewars
//
//  Created by Sébastien Kothé on 20/02/2022.
//

import Foundation

func removNb(_ n: Int) -> [(Int,Int)] {
    var b = Int()
    let sum = (1...n).reduce(0, +)
    
    var numbers = [(Int, Int)]()
    
    for a in (n / 2)...n {
        
        b = ((sum - a) / a) - 1
        
        if (a * b) == (sum - a - b) {
            numbers.append(contentsOf: [(a, b), (b, a)])
        }
    }
    
    numbers.sort { $0.0 < $1.0 }
    return numbers
}
