//
//  RecoverASecret.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

// MARK: - Internal methods
func recoverSecret(from triplets: [[String]]) -> String {
    let reduced = triplets.reduce([], +)
    let set = NSOrderedSet(array: reduced)
    let letters = Array(set) as? Array<String>
    let chunks = triplets.map { $0.joined() }
    
    guard var uniqueLetters = letters?.joined() else { return "" }
    var counter = 0
    
    while counter < chunks.count {
        for triplet in chunks where !uniqueLetters.contains(triplet) {
            sortTheWordWith(triplet: triplet, word: &uniqueLetters)
            counter += 1
        }
    }
    
    return uniqueLetters
}

// MARK: - Private methods
private func sortTheWordWith(triplet: String, word: inout String) {
    guard let first = triplet.first, let snd = triplet.dropFirst().first, let third = triplet.last else { return }
    
    guard let i1 = word.firstIndex(of: first), let i2 = word.firstIndex(of: snd), let i3 = word.firstIndex(of: third) else { return }
    
    if i1 > i2 {
        modifyWord(&word, char: first, indexToRemove: i1, indexToAdd: i2)
    }
    
    if i2 > i3 {
        modifyWord(&word, char: third, indexToRemove: i3, indexToAdd: i2)
    }
}

private func modifyWord(_ word: inout String, char: String.Element, indexToRemove: String.Index, indexToAdd: String.Index) {
    word.remove(at: indexToRemove)
    word.insert(char, at: indexToAdd)
}
