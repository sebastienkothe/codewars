//
//  PlayingWithDigits.swift
//  codewars
//
//  Created by Sébastien Kothé on 10/02/2022.
//

import Foundation

func digPow(for number: Int, using power: Int) -> Int {
    let digits = String(number).compactMap { Double($0.wholeNumberValue ?? 0) }
    var power = Double(power); var sum = 0.0; var k = 1.0; var product = 0.0
    
    for digit in digits {
        sum += pow(digit, power)
        power += 1
    }
    
    while product < sum {
        product = Double(number) * k
        if product == sum { return Int(k) }
        k += 1
    }
    
    return -1
}
