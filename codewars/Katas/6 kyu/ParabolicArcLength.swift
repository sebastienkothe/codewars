//
//  ParabolicArcLength.swift
//  codewars
//
//  Created by Sébastien Kothé on 04/02/2022.
//

import Foundation

func lenCurve(_ n: Int) -> Double {
    var ol = Double()
    var sl = Double()
    var x = Double()
    
    let h = 1 / Double(n)
    var z = h
    
    for _ in 1..<n + 1 {
        sl = sqrt(pow(z - x, 2) + pow(pow(z, 2) - pow(x, 2), 2))
        z += h ; x += h ; ol += sl
    }
    
    return ol
}
