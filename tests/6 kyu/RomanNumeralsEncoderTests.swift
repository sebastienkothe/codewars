//
//  RomanNumeralsEncoderTests.swift
//  tests
//
//  Created by Sébastien Kothé on 06/02/2022.
//

import Foundation
import XCTest

    class RomanNumeralsEncoderTests: XCTestCase {
        
    func testOneThroughTen() {
        XCTAssertEqual(sol(1), "I")
        XCTAssertEqual(sol(2), "II")
        XCTAssertEqual(sol(3), "III")
        XCTAssertEqual(sol(4), "IV")
        XCTAssertEqual(sol(5), "V")
        XCTAssertEqual(sol(6), "VI")
        XCTAssertEqual(sol(7), "VII")
        XCTAssertEqual(sol(8), "VIII")
        XCTAssertEqual(sol(9), "IX")
        XCTAssertEqual(sol(10), "X")
    }
    
    func testBigNumbers() {
        XCTAssertEqual(sol(100), "C")
        XCTAssertEqual(sol(444), "CDXLIV")
        XCTAssertEqual(sol(1000), "M")
        XCTAssertEqual(sol(1954), "MCMLIV")
        XCTAssertEqual(sol(1990), "MCMXC")
        XCTAssertEqual(sol(1999), "MCMXCIX")
        XCTAssertEqual(sol(2000), "MM")
        XCTAssertEqual(sol(2008), "MMVIII")
        XCTAssertEqual(sol(3000), "MMM")
        XCTAssertEqual(sol(3900), "MMMCM")
        XCTAssertEqual(sol(3914), "MMMCMXIV")
    }
        
        func testWith444() {
            XCTAssertEqual(sol(444), "CDXLIV")
        }
}
