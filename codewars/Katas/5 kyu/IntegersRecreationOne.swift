//
//  IntegersRecreationOne.swift
//  codewars
//
//  Created by Sébastien Kothé on 21/02/2022.
//

import Foundation

func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var dividers = [Int]()
    var output = [(Int, Int)]()
    
    for x in m...n {
        for d in 1...(n / 2) where (x >= d) && (x % d) == 0 {
            dividers.append(d * d)
        }
        
        if x > (n / 2) { dividers.append(x * x) }
        let sum = dividers.reduce(0, +)
        
        if sqrt(Double(sum)).truncatingRemainder(dividingBy: 1) == 0 {
            output.append((x, sum))
        }
        
        dividers.removeAll()
    }
    
    return output
}
