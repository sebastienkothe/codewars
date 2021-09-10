//
//  GapInPrimes.swift
//  codewars
//
//  Created by Mosma on 09/09/2021.
//

import Foundation

// MARK: - Internal methods
func gap(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    var lastPrime = Int()
    
    for num in m...n {
        let s = Int(ceil(sqrt(Double(n))))
        var divider = 2
        var isAPrime = true
        
        while divider <= s {
            let quotient = Double(num) / Double(divider)
            
            if floor(quotient) == quotient && divider != num {
                isAPrime = false
                break
            }
            
            if divider == s && isAPrime {
                if num - lastPrime == g {
                    return (lastPrime, num)
                }
                lastPrime = num
            }
            
            divider += 1
        }
        
        divider = 2
    }
    
    return nil
}
