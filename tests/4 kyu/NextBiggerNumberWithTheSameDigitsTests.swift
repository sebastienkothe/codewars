//
//  NextBiggerNumberWithTheSameDigitsTests.swift
//  tests
//
//  Created by Sébastien Kothé on 27/02/2022.
//

import Foundation
import XCTest

class NextBiggerNumberWithTheSameDigitsTests: XCTestCase {
    func testSampleCases() {
        XCTAssertEqual(nextBigger(num: 12), 21)
        XCTAssertEqual(nextBigger(num: 513), 531)
        XCTAssertEqual(nextBigger(num: 2017), 2071)
        XCTAssertEqual(nextBigger(num: 414), 441)
        XCTAssertEqual(nextBigger(num: 144), 414)
        XCTAssertEqual(nextBigger(num: 10990), 19009)
        XCTAssertEqual(nextBigger(num: 1234567908), 1234567980)
        XCTAssertEqual(nextBigger(num: 218765), 251678)
        XCTAssertEqual(nextBigger(num: 1234), 1243)
        XCTAssertEqual(nextBigger(num: 4321), nil)
    }
}

