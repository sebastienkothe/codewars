//
//  TheLookAndSaySequence.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func getLines(_ num:Int?) -> String {
    guard var num = num, num > 0 else { return "-1" }
    guard !(1...5).contains(num) else { return smallCases(num: num) }
    
    var counter = Int()
    var canLoop = true
    var lastNumber = "111221"
    
    var sequence = "1,11,21,1211,111221," {
        didSet {
            let numberOfElements = sequence.components(separatedBy: ",").count
            if numberOfElements == num && lastNumber.isEmpty {
                canLoop = false
            }
        }
    }
    
    while canLoop {
        for (index, digit) in lastNumber.enumerated() {
            guard index < lastNumber.count - 1 else {
                updateSequence(&counter, valueForCounter: 1, &sequence, digit, &lastNumber, &num)
                break
            }
            
            guard let currentIndex = lastNumber.firstIndex(of: digit) else { return "" }
            let secondIndex = lastNumber.index(after: currentIndex)
            let secondDigit = lastNumber[secondIndex]
            
            if digit != secondDigit {
                updateSequence(&counter, valueForCounter: 1, &sequence, digit, &lastNumber, &num)
                break
            }
            
            if lastNumber.count >= 3 {
                let thirdIndex = lastNumber.index(after: secondIndex)
                let thirdDigit = lastNumber[thirdIndex]
                if digit == secondDigit && secondDigit == thirdDigit {
                    updateSequence(&counter, valueForCounter: 3, &sequence, digit, &lastNumber, &num)
                    break
                }
            }
            
            if digit == secondDigit {
                updateSequence(&counter, valueForCounter: 2, &sequence, digit, &lastNumber, &num)
                break
            }
        }
    }
    
    return sequence
}

// MARK: - Private methods
private func smallCases(num: Int) -> String {
    switch num {
    case 1: return "1"
    case 2: return "1,11"
    case 3: return "1,11,21"
    case 4: return "1,11,21,1211"
    case 5: return "1,11,21,1211,111221"
    default:
        return "-1"
    }
}

private func updateSequence(_ counter: inout Int, valueForCounter: Int, _ sequence: inout String, _ digit: String.Element, _ lastNumber: inout String, _ num: inout Int) {
    counter = valueForCounter
    sequence.append("\(counter)" + String(digit))
    
    for _ in 1...valueForCounter {
        lastNumber.removeFirst()
    }
    
    if lastNumber.isEmpty && !(sequence.dropLast().components(separatedBy: ",").count == num) {
        lastNumber = sequence.components(separatedBy: ",").last ?? ""
        sequence.append(",")
    }
    
}

