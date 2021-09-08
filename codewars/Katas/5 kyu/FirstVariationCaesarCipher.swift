//
//  FirstVariationCaesarCipher.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func movingShift(_ s: String, _ shift: Int) -> [String] {
    var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map({ String($0) })
    var offset = shift
    var sentence = String()
    var arr = [String]()
    
    caesarCipherOperation(s, &sentence, &offset, &alphabet)
    
    var word = String()
    let chunk = Double(sentence.count) / 5
    var numberOfCharInChunk = Int()
    var isADecimalNumber = false
    
    checkTheNatureOfTheNumber(chunk, &numberOfCharInChunk, &isADecimalNumber)
    
    splitTheSentence(&sentence, &word, numberOfCharInChunk, &arr, isADecimalNumber)
    
    if arr.count < 5 { arr.append("") }
    return arr
}

func demovingShift(_ arr: [String], _ shift: Int) -> String {
    
    var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".reversed().map({ String($0) })
    var offset = shift
    var sentence = String()
    
    caesarCipherOperation(arr.joined(), &sentence, &offset, &alphabet)
    
    return sentence
}

// MARK: - Private methods
private func caesarCipherOperation(_ s: String, _ sentence: inout String, _ offset: inout Int, _ alphabet: inout [String]) {
    for char in s {
        if !char.isLetter {
            addCharToSentence(&sentence, String(char), &offset)
            continue
        }
        
        handleTheLetterToAdd(&alphabet, char, &sentence, &offset)
    }
}

private func addCharToSentence(_ sentence: inout String, _ char: String, _ offset: inout Int) {
    sentence.append(char)
    offset += 1
}

private func handleTheLetterToAdd(_ alphabet: inout [String], _ char: String.Element, _ sentence: inout String, _ offset: inout Int) {
    let indexForChar = alphabet.firstIndex(of: char.uppercased()) ?? 0
    
    if (indexForChar + offset) > (alphabet.count - 1) {
        alphabet.append(contentsOf: alphabet)
    }
    
    let lowercased = alphabet[indexForChar + offset].lowercased()
    let uppercased = alphabet[indexForChar + offset]
    let characterToAdd = char.isLowercase ? lowercased : uppercased
    
    addCharToSentence(&sentence, characterToAdd, &offset)
}

private func checkTheNatureOfTheNumber(_ chunk: Double, _ numberOfCharInChunk: inout Int, _ isADecimalNumber: inout Bool) {
    if floor(chunk) == chunk {
        numberOfCharInChunk = Int(chunk)
    } else {
        numberOfCharInChunk = Int(chunk + 1)
        isADecimalNumber = true
    }
}

private func splitTheSentence(_ sentence: inout String, _ word: inout String, _ numberOfCharInChunk: Int, _ arr: inout [String], _ isADecimalNumber: Bool) {
    for (index, char) in sentence.enumerated() {
        word += String(char)
        
        if (index + 1).isMultiple(of: numberOfCharInChunk) {
            arr.append(word)
            word.removeAll()
        }
        
        if isADecimalNumber && index == (numberOfCharInChunk * 4) {
            arr.append(sentence)
        }
        
        sentence.removeFirst()
    }
}
