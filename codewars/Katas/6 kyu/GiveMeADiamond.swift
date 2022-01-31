//
//  GiveMeADiamond.swift
//  codewars
//
//  Created by Sébastien Kothé on 30/01/2022.
//

import Foundation

    // MARK: - Internal methods

    func diamond(_ size: Int) -> String? {
        guard !size.isMultiple(of: 2), size > 0 else { return nil }
        
        var numberOfAsterisksForEachLine = Array<Int>()
        var indexesOfAsterisksForEachLine = setIndexesOfAsterisksForEachLine(size: size)
        
        setTheNumberOfAsterisksForEachLine(size, &numberOfAsterisksForEachLine)
        
        return buildTheDiamond(&indexesOfAsterisksForEachLine, size, &numberOfAsterisksForEachLine)
    }

    // MARK: - Private methods

    private func setIndexesOfAsterisksForEachLine(size: Int) -> [Int] {
        var asteriskIndex = size == 1 ? 0 : 1
        var arr = [Int]()
        
        if size > 4 {
            for digit in 5...size where !digit.isMultiple(of: 2) {
                asteriskIndex += 1
            }
        }
        
        while asteriskIndex >= 0 {
            arr.append(asteriskIndex)
            asteriskIndex -= 1
        }
        
        arr.append(contentsOf: arr.dropLast().reversed())
        
        return arr
    }

    private func setTheNumberOfAsterisksForEachLine(_ size: Int, _ numberOfAsterisksForEachLine: inout [Int]) {
        
        for number in 0...size where !number.isMultiple(of: 2) {
            numberOfAsterisksForEachLine.append(number)
        }
        
        numberOfAsterisksForEachLine.append(contentsOf: numberOfAsterisksForEachLine.dropLast().reversed())
    }

    private func buildTheDiamond(_ indexesOfAsterisksForEachLine: inout [Int], _ size: Int, _ numberOfAsterisksForEachLine: inout [Int]) -> String {
        
        let asterisk: String.Element = "*"
        var str = String()
        var i = 0
        
        while i != indexesOfAsterisksForEachLine.count {
            for index in 0..<size {
                if index == indexesOfAsterisksForEachLine[i] {
                    for _ in 0..<numberOfAsterisksForEachLine[i] {
                        str.append(asterisk)
                    }
                } else {
                    let last = str.last
                    if last != asterisk {
                        str.append(" ")
                    }
                }
                
                if index == size - 1 {
                    str.append("\n")
                    i += 1
                }
            }
        }
        
        return str
    }
