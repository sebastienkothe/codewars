//
//  RomanNumeralsEncoder.swift
//  codewars
//
//  Created by Sébastien Kothé on 06/02/2022.
//

import Foundation

func sol(_ number:Int) -> String {
    var str = String()
    var numberAsArr = String(number).compactMap { $0.wholeNumberValue }
    
    for number in numberAsArr {
        convert(number, str: &str, length: numberAsArr.count)
        numberAsArr.removeFirst()
    }
    return str
}

private func convert(_ number: Int, str: inout String, length: Int) {
    var symbol = String()
    
    let ranks = [1 : "I", 2 : "X", 3 : "C", 4 : "M"]
    symbol = ranks[length]!
    var isTheNumberBetween6And8 = false
    let symbols = ["I4" : "IV", "X4" : "XL", "C4" : "CD", "I5" : "V", "X5" : "L", "C5" : "D", "I9" : "IX", "X9" : "XC", "C9" : "CM"]
    
    var concat = symbol + String(number)
    
    if (1...3).contains(number) {
        for _ in 0..<number { str.append(symbol) }
    } else {
        guard number != 0 else { return }
        if (6...8).contains(number) {
            isTheNumberBetween6And8 = true
            concat.removeLast()
            concat.append("5")
        }
        str.append(symbols[concat]!)
        if isTheNumberBetween6And8 { for _ in 0..<number - 5 { str.append(symbol) } }
    }
}
