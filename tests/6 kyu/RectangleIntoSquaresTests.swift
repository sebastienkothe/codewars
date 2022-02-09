//
//  RectangleIntoSquaresTests.swift
//  tests
//
//  Created by Sébastien Kothé on 08/02/2022.
//

import XCTest

class RectangleIntoSquaresTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(sqInRect(5, 3), [3, 2, 1, 1])
        XCTAssertEqual(sqInRect(3, 5), [3, 2, 1, 1])
        XCTAssertEqual(sqInRect(20, 14), [14, 6, 6, 2, 2, 2])
    }
}
