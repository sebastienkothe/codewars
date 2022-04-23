//
//  PhoneDirectory.swift
//  codewars
//
//  Created by Sébastien Kothé on 19/04/2022.
//

import Foundation

extension String {
    func slice(from: String, to: String) -> String? {
        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                String(self[substringFrom..<substringTo])
            }
        }
    }
}

func phone(_ strng: String, _ num: String) -> String {
    let str = extractInfo(from: strng, separator: "\n", shouldContain: num)
    
    // PHONE NUMBER
    var number = extractInfo(from: str, separator: " ", shouldContain: "+")
    let numberCopy = number
    let delCharSet = NSCharacterSet(charactersIn: "*+;/$?:")
    number = number.trimmingCharacters(in: delCharSet as CharacterSet)
    let isThereOnlyOneNumber = number.filter { $0.isNumber }.count <= 12
    if !isThereOnlyOneNumber { return "Error => Too many people: \(num)" }
    
    // NAME
    guard var unwrappedName = str.slice(from: "<", to: ">") else { return "Error => Not found: \(num)" }
    let unwrappedNameCopy = unwrappedName
    unwrappedName = unwrappedName.trimmingCharacters(in: .whitespaces)
    
    // ADDRESS
    let address = str
        .replacingOccurrences(of: numberCopy, with: "")
        .replacingOccurrences(of: "<" + unwrappedNameCopy + ">", with: "")
        .replacingOccurrences(of: "/", with: "")
        .replacingOccurrences(of: ";", with: "")
        .replacingOccurrences(of: ",", with: "")
        .replacingOccurrences(of: "_", with: " ")
        .replacingOccurrences(of: "  ", with: " ")
        .trimmingCharacters(in: .whitespaces)
    return "Phone => \(number), Name => \(unwrappedName), Address => \(address)"
}

private func extractInfo(from string: String, separator: String, shouldContain: String) -> String {
    return string
        .components(separatedBy: separator)
        .filter { $0.contains(shouldContain) }
        .joined()
}
