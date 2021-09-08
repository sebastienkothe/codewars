//
//  PrinterErrors.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

func printerError(_ s: String) -> String {
    let range = "a"..."m"
    var errorsCounter = 0
    
    for char in s {
        if !range.contains(String(char)) { errorsCounter += 1 }
    }
    
    return "\(errorsCounter)/\(s.count)"
}
