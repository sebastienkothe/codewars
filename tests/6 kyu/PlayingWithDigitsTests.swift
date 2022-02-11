//
//  PlayingWithDigitsTests.swift
//  tests
//
//  Created by Sébastien Kothé on 10/02/2022.
//

import XCTest

class PlayingWithDigitsTests: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual(digPow(for: 89, using: 1), 1)
        XCTAssertEqual(digPow(for: 92, using: 1), -1)
        XCTAssertEqual(digPow(for: 46288, using: 3), 51)
    }
}
