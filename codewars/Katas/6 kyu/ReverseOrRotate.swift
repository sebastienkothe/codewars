//
//  ReverseOrRotate.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func revRot(_ s: String, _ c: Int) -> String {
    guard c > 0, !s.isEmpty, String(c).count < s.count else { return "" }
    var partialStr = s
    var str = String()
    
    while !partialStr.isEmpty {
        var sum = Double()
        var truncated = partialStr.prefix(c).map { String($0) }
        guard truncated.count == c else { break }
        for digit in truncated {
            sum += pow(Double(digit) ?? 0, 3)
        }
        
        if sum.truncatingRemainder(dividingBy: 2) == 0 {
            str.append(truncated.reversed().joined())
            sum = 0
        } else {
            let first = truncated.first ?? ""
            truncated.removeFirst()
            truncated.append(first)
            str.append(truncated.joined())
        }
        
        partialStr.removeFirst(c)
        
    }
    
    return str
}
