//
//  Multiples of 3 or 5.swift
//  codewars
//
//  Created by Sébastien Kothé on 28/01/2022.
//

import Foundation

func findMultiples(_ num: Int) -> Int {
    
    guard num > 0 else { return 0 }
    var num = num
    var sum = Int()
    
    while num > 0 {
        num -= 1
        
        if num.isMultiple(of: 3) || num.isMultiple(of: 5) {
            sum += num
        } else {
            continue
        }
    }
    
    return sum
}
