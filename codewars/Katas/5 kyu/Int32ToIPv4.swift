//
//  Int32ToIPv4.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func ipv4(of i32: UInt32) -> String {
    var ip = String()
    var input = i32
    var sum = Int()
    var i = 0
    
    let bits = convertInputInBinary(number: &input)
    
    if bits.count < 4 { handleEmptyBit(bits, &ip) }
    
    let values = [
        0 : 128, 1: 64, 2: 32, 3: 16, 4: 8, 5: 4, 6: 2, 7: 1
    ]
    
    handleIPConversion(bits, &i, &sum, values, &ip)
    
    return ip.trimmingCharacters(in: .punctuationCharacters)
}

// MARK: - Private methods
private func convertInputInBinary(number: inout UInt32) -> [[String]] {
    var bits = [[String]]()
    var bit = [String]()
    
    let index = bit.startIndex
    
    while number > 0 {
        number % 2 == 0 ? bit.insert("0", at: index) : bit.insert("1", at: index)
        number /= 2
        
        if bit.count == 8 || number < 1 {
            bits.insert(bit, at: bits.startIndex)
            bit.removeAll()
        }
    }
    
    return bits
}

private func handleEmptyBit(_ bits: [[String]], _ ip: inout String) {
    
    let max = 4 - bits.count
    
    for _ in 1...max {
        ip += "0."
    }
}

private func handleIPConversion(_ bits: [[String]], _ i: inout Int, _ sum: inout Int, _ values: [Int : Int], _ ip: inout String) {
    for bit in bits {
        for (binaryIndex, binary) in bit.enumerated() {
            if bit.count < 8 {
                i = (binaryIndex + 8) - bit.count
            } else {
                i = binaryIndex
            }
            
            if binary == "1" { sum += values[i] ?? 0 }
            
            if bits.count > 8 { i += 1 }
        }
        
        ip += String(sum)
        sum = 0
        ip += "."
    }
}
