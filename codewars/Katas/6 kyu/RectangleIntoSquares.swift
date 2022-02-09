//
//  RectangleIntoSquares.swift
//  codewars
//
//  Created by Sébastien Kothé on 08/02/2022.
//

import Foundation

func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    guard lng != wdth else { return nil }
    
    var squareSizes = [Int]()
    var side2 = lng, side1 = wdth
    var rectangleSize = side2 * side1
    
    while rectangleSize > 0 {
        side1 = side2 > side1 ? side1 : side2
        squareSizes.append(side1)
        rectangleSize -= side1 * side1
        side2 = rectangleSize / side1
    }
    
    return squareSizes
}
