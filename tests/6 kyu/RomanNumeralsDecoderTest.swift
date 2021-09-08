//
//  RomanNumeralsDecoderTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class RomanNumeralsDecoderTest: XCTestCase {
    
    func testOneThroughTen() {
        XCTAssertEqual(solution("I"), 1)
        XCTAssertEqual(solution("II"), 2)
        XCTAssertEqual(solution("III"), 3)
        XCTAssertEqual(solution("IV"), 4)
        XCTAssertEqual(solution("V"), 5)
        XCTAssertEqual(solution("VI"), 6)
        XCTAssertEqual(solution("VII"), 7)
        XCTAssertEqual(solution("VIII"), 8)
        XCTAssertEqual(solution("IX"), 9)
        XCTAssertEqual(solution("X"), 10)
    }
    
    func testBigNumbers() {
        XCTAssertEqual(solution("C"), 100)
        XCTAssertEqual(solution("CDXLIV"), 444)
        XCTAssertEqual(solution("M"), 1000)
        XCTAssertEqual(solution("MCMLIV"), 1954)
        XCTAssertEqual(solution("MCMXC"), 1990)
        XCTAssertEqual(solution("MCMXCIX"), 1999)
        XCTAssertEqual(solution("MM"), 2000)
        XCTAssertEqual(solution("MMVIII"), 2008)
        XCTAssertEqual(solution("MMM"), 3000)
        XCTAssertEqual(solution("MMMCM"), 3900)
        XCTAssertEqual(solution("MMMCMXIV"), 3914)
    }
    
}
