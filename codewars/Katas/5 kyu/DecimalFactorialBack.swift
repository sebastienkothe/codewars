//
//  DecimalFactorialBack.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func dec2FactString(_ nb: Int) -> String {
    var nb = nb
    var highestValue = Int()
    var factorial = Int()
    var coefficient = Int()
    var product = Int()
    var encodedDecimal = String()
    
    findHighestFactorial(nb, &highestValue, &factorial)
    
    while factorial > -1 {
        findHighestCoefficient(&coefficient, &nb, highestValue, &product, &encodedDecimal)
        factorial -= 1
        if factorial > -1 { highestValue = computeFactorialOf(factorial) }
    }
    
    return encodedDecimal
}

func factString2dDec(_ s: String) -> Int {
    var highestFactorial = s.count - 1
    var result = Int()
    
    for digit in s {
        if digit.isLetter { highestFactorial = alphabet[String(digit)] ?? 0 }
        
        let valueOfFactorial = computeFactorialOf(highestFactorial)
        
        if let digitAsInt = Int(String(digit)) {
            result += valueOfFactorial * digitAsInt
        } else {
            result += valueOfFactorial * highestFactorial
        }
        
        highestFactorial -= 1
    }
    
    return result
}

// MARK: - Private properties
private let charLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map({ String($0) })

private let alphabet: [String : Int] = ["A" : 10, "B" : 11, "C" : 12, "D" : 13, "E" : 14, "F" : 15, "G" : 16, "H" : 17, "I" : 18, "J" : 19, "K" : 10, "L" : 21, "M" : 22, "N" : 23, "O" : 24, "P" : 25, "Q" : 26, "R" : 27, "S" : 28, "T" : 29, "U" : 30, "V" : 31, "W" : 32, "X" : 33, "Y" : 34, "Z" : 35
]

// MARK: - Private methods
private func findHighestFactorial(_ nb: Int, _ highestValue: inout Int, _ factorial: inout Int) {
    var previousValue = Int()
    var value = Int()
    var counter = Int()
    
    while nb > value {
        previousValue = value
        if value > nb { break }
        value = computeFactorialOf(counter)
        counter += 1
    }
    
    highestValue = previousValue
    factorial = counter - 2
}

private func findHighestCoefficient(_ coefficient: inout Int, _ nb: inout Int, _ highestValue: Int, _ product: inout Int, _ encodedDecimal: inout String) {
    coefficient = nb / highestValue
    product = highestValue * coefficient
    
    if coefficient >= 10  {
        encodedDecimal += charLetters[coefficient - 10]
    } else {
        encodedDecimal += String(coefficient)
    }
    
    nb -= product
}

private func computeFactorialOf(_ num: Int) -> Int {
    guard num != 0 else {
        return 1
    }
    
    return (1...num).reduce(1, { $0 * $1 })
}
