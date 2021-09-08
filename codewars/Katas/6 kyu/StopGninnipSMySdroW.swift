//
//  StopGninnipSMySdroW.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func spinWords(in sentence: String) -> String {
    var arr = [String]()
    var word = ""
    
    for (index, char) in sentence.enumerated() {
        
        if !char.isWhitespace { word.append(char) }
        
        if char.isWhitespace || index == (sentence.count - 1) && !char.isWhitespace {
            if word.count >= 5 {
                let wordReversed = word.reversed()
                arr.append(String(wordReversed + " "))
            } else {
                arr.append(word + " ")
            }
            word.removeAll()
        }
    }
    
    return arr.joined().trimmingCharacters(in: .whitespaces)
}
