//
//  CountingDuplicates.swift
//  codewars
//
//  Created by Sébastien Kothé on 23/04/2022.
//

import Foundation

func countDuplicates(_ s:String) -> Int {
    var dic = [String.Element: Int]()
    
    for char in s.uppercased() {
        dic[char] = (dic[char] ?? 0) + 1
    }
    
    return dic.values.filter { $0 > 1 }.count
}
