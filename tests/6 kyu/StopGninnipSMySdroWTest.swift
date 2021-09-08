//
//  StopGninnipSMySdroWTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class StopGninnipSMySdroWTest: XCTestCase {
    
    func testSingleWords() {
        let testCases = [
            ("Welcome", "emocleW"),
            ("to", "to"),
            ("CodeWars", "sraWedoC"),
        ]
        assertTest(testCases)
    }
    
    func testMultipleWords() {
        let testCases = [
            ("Hey fellow warriors", "Hey wollef sroirraw"),
            ("This sentence is a sentence", "This ecnetnes is a ecnetnes"),
        ]
        assertTest(testCases)
    }
    
    func testRandomWords() {
        func randomString(length: Int = .random(in: 1...15)) -> String {
            let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
            return String((0..<length).map{ _ in letters.randomElement()! })
        }
        
        for _ in 1...40 {
            let sentence: String = [String].init(repeating: "", count: Int.random(in: 1...10))
                .map { _ in randomString() }
                .joined(separator: " ")
            let expected = sentence
                .components(separatedBy: " ")
                .map { return $0.count > 4 ? String($0.reversed()) : $0 }
                .joined(separator: " ")
            
            XCTAssertEqual(spinWords(in: sentence), expected)
        }
    }
    
    // MARK: - Private methods
    private func assertTest(_ testCase: [(String, String)]) {
        testCase.forEach {
            XCTAssertEqual(spinWords(in: $0.0), $0.1)
        }
    }
}
