//
//  main.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

func spiral(_ n:Int) -> [[Int]] {
    guard n >= 5 else {return [[]]}
    var square = drawSquare(n)
    let spiral = drawSpiral(n, &square)
    return spiral
}

func drawSpiral(_ n: Int, _ square: inout [[Int]]) -> [[Int]] {
    var counter = 0
    var lastColumn = Int()
    while counter != 1 {
        for (row, arr) in square.enumerated() {
            guard row != 0 && row != square.count - 1 else { continue }
            for (column, _) in arr.enumerated().dropFirst().dropLast() {
                if row == 1 || column == 1 && row != 2 || column == arr.count - 2 || row == square.count - 2 { square[row][column] = 0 }
                let left = square[row][column - 1]
                
                
                guard column >= 2 && column <= square[row].count - 3 && row >= 2 && row <= square.count - 3 else { continue }
                
                if left == 0 && square[row][column + 2] != 0 {
                    square[row][column] = 0
                }
                
                if square[row][column + 2] == 0 {
                    lastColumn = column
                }
                
                if column == lastColumn && square[row + 2][column] != 0 {
                    square[row][column] = 0
                }
                
                switch counter {
                case 1:
                    break
                case 2:
                    break
                case 3:
                    break
                case 4:
                    break
                case 5:
                    break
                case 6:
                    break
                case 7:
                    break
                case 8:
                    break
                case 9:
                    break
                case 10:
                    break
                default:
                    break
                }
            }
        }
        counter += 1
    }
    
    
    for l in square {
        print(l)
    }
    
    return square
}

private func buildPlayground(_ square: inout [[Int]], _ row: Int, _ column: Int, _ rules: [Int], num: Int) {
    
    guard column >= 2 && column <= square[row].count - 3 && row >= 2 && row <= square.count - 3 else { return }
    
    let topL = square[row - 1][column - 1]
    let top = square[row - 1][column]
    let topR = square[row - 1][column + 1]
    let right = square[row][column + 1]
    
    let bottomR = square[row + 1][column + 1]
    let bottom = square[row + 1][column]
    let bottomL = square[row + 1][column - 1]
    let left = square[row][column - 1]
    
    if
        topL == rules[0] &&
        top == rules[1] &&
        topR == rules[2] &&
        right == rules[3] &&
        bottomR == rules[4] &&
        bottom == rules[5] &&
        bottomL == rules[6] &&
        left == rules[7] {
        square[row][column] = num
    }
    
}

private func drawSquare(_ n: Int) -> [[Int]] {
    var tmpArr = [Int]()
    var square = [[Int]]()
    
    while square.count != n {
        while tmpArr.count != n {
            tmpArr.append(square.count == 1 && tmpArr.count == 0 ? 0 : 1)
        }
        square.append(tmpArr)
        tmpArr.removeAll()
    }
    
    return square
}

let c = spiral(8)

//
//assert(spiral(6) == [
//    [1, 1, 1, 1, 1, 1], [0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 0, 1], [1, 0, 0, 1, 0, 1], [1, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1],
//])
