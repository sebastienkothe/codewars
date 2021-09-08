//
//  DirectionsReduction.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func dirReduc(_ arr: [String]) -> [String] {
    var arr = arr
    let north = "NORTH"; let south = "SOUTH"; let east = "EAST"; let west = "WEST"
    var hasBeenDeleted = false
    
    for (i, direction) in arr.enumerated() {
        let maxIndex = arr.count - 1
        guard i < maxIndex else { continue }
        
        switch direction {
        case north:
            if arr[i + 1] == south { arr.remove(at: i + 1); arr.remove(at: i); hasBeenDeleted = true; return dirReduc(arr) }
        case south:
            if arr[i + 1] == north { arr.remove(at: i + 1); arr.remove(at: i); hasBeenDeleted = true; return dirReduc(arr)
            }
        case east:
            if arr[i + 1] == west { arr.remove(at: i + 1); arr.remove(at: i); hasBeenDeleted = true; return dirReduc(arr)
            }
        case west:
            if arr[i + 1] == east { arr.remove(at: i + 1); arr.remove(at: i); hasBeenDeleted = true; return dirReduc(arr)
            }
        default:
            return []
        }
    }
    
    if hasBeenDeleted == false { return arr }
}
