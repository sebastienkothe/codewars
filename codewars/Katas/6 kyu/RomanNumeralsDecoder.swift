//
//  RomanNumeralsDecoder.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func solution(_ string:String) -> Int {
    let dic: [String: Int] = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    var result = Int()
    let arr = string.map { String($0) }
    var skip = false
    
    for (index, currentRomNum) in arr.enumerated() {
        if skip { skip = false ; continue }
        let maxIndex = arr.count - 1
        
        if index < maxIndex {
            let nextSymbol = arr[index + 1]
            if dic[nextSymbol]! > dic[currentRomNum]! {
                result += dic[nextSymbol]! - dic[currentRomNum]!
                skip = true
            } else {
                result += dic[currentRomNum]!
            }
        } else {
            result += dic[currentRomNum]!
        }
    }
    
    return result
}
