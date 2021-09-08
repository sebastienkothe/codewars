//
//  IfYouCanReadThisTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class IfYouCanReadThisTest: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(toNato("If you can read"), "India Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta")
        XCTAssertEqual(toNato("Did not see that coming"), "Delta India Delta November Oscar Tango Sierra Echo Echo Tango Hotel Alfa Tango Charlie Oscar Mike India November Golf")
        XCTAssertEqual(toNato("go for it!"), "Golf Oscar Foxtrot Oscar Romeo India Tango !")
    }
    
    func testRandom() {
        for _ in 0..<5 {
            let word = randomWord()
            XCTAssertEqual(toNato(word), solution(word))
        }
    }
    
    // MARK: - Private methods
    private func randomWord() -> String {
        var result = ""
        let length = Int(arc4random() % 20) + 5
        let start = UnicodeScalar("a")
        for _ in 0..<length {
            result += String(describing: UnicodeScalar(Int(start.value) + Int(arc4random() % 25)))
        }
        return result
    }
    
    private func alphabet(_ character: Character) -> String {
        switch character {
        case "a": return "Alfa"
        case "b": return "Bravo"
        case "c": return "Charlie"
        case "d": return "Delta"
        case "e": return "Echo"
        case "f": return "Foxtrot"
        case "g": return "Golf"
        case "h": return "Hotel"
        case "i": return "India"
        case "j": return "Juliett"
        case "k": return "Kilo"
        case "l": return "Lima"
        case "m": return "Mike"
        case "n": return "November"
        case "o": return "Oscar"
        case "p": return "Papa"
        case "q": return "Quebec"
        case "r": return "Romeo"
        case "s": return "Sierra"
        case "t": return "Tango"
        case "u": return "Uniform"
        case "v": return "Victor"
        case "w": return "Whiskey"
        case "x": return "Xray"
        case "y": return "Yankee"
        case "z": return "Zulu"
        case " ": return ""
        default: return String(character)
        }
    }
    
    private func solution(_ words: String) -> String {
        return words.lowercased()
            .map { character in
                let value = alphabet(character)
                return (value.utf8.count > 0 ? " " : "") + value
            }.joined(separator: "")
            .trimmingCharacters(in: CharacterSet(charactersIn: " "))
    }
}
