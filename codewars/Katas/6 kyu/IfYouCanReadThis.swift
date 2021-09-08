//
//  IfYouCanReadThis.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func toNato(_ words: String) -> String {
    let word = words.replacingOccurrences(of: " ", with: "").uppercased()
    var translation = ""
    
    for char in word {
        let nato = dictionary[String(char)]
        let charAsString = String(char)
        translation.append(nato ?? charAsString)
        translation.append(" ")
    }
    
    return translation.trimmingCharacters(in: .whitespaces)
}

// MARK: - Private properties
private let dictionary: [String : String] = [
    "A": "Alfa",
    "B": "Bravo",
    "C": "Charlie",
    "D": "Delta",
    "E": "Echo",
    "F": "Foxtrot",
    "G": "Golf",
    "H": "Hotel",
    "I": "India",
    "J": "Juliett",
    "K": "Kilo",
    "L": "Lima",
    "M": "Mike",
    "N": "November",
    "O": "Oscar",
    "P": "Papa",
    "Q": "Quebec",
    "R": "Romeo",
    "S": "Sierra",
    "T": "Tango",
    "U": "Uniform",
    "V": "Victor",
    "W": "Whiskey",
    "X": "Xray",
    "Y": "Yankee",
    "Z": "Zulu"
]
