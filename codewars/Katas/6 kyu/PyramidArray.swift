//
//  PyramidArray.swift
//  codewars
//
//  Created by Sébastien Kothé on 14/02/2022.
//

import Foundation

func pyramid(_ n: Int) -> [[Int]] {
    guard n > 0 else { return [] }
    
    var arrOfArrays = [[Int]]()
    var n = n
    var tempArr = [Int]()
    
    while n >= 1 {
        for _ in 0..<n {
            tempArr.append(1)
        }
        arrOfArrays.append(tempArr)
        tempArr.removeAll()
        n -= 1
    }
    
    return arrOfArrays.reversed()
}
