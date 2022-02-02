//
//  ConsecutiveStrings.swift
//  codewars
//
//  Created by Sébastien Kothé on 02/02/2022.
//

import Foundation

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    let starrLength = strarr.count
    if starrLength == 0 || (k > starrLength || k <= 0) { return "" }
    
    var concatenations = [String]()
    var maxLength = 0
    
    for (index, _) in strarr.enumerated() {
        guard (index + (k - 1)) <= strarr.count - 1 else { continue }
        var str = String()
        for word in strarr[index..<index + k] {
            str.append(word)
        }
        
        if str.count > maxLength { maxLength = str.count }
        
        concatenations.append(str)
    }
    
    return concatenations.filter { $0.count >= maxLength }.first!
}
