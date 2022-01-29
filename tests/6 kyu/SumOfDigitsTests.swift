//
//  SumOfDigitsTests.swift
//  tests
//
//  Created by Sébastien Kothé on 29/01/2022.
//

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(digitalRoot(of: 16), 7);
        XCTAssertEqual(digitalRoot(of: 456), 6);
    }
}

