//
//  GapInPrimesTest.swift
//  tests
//
//  Created by Mosma on 09/09/2021.
//

import XCTest

class GapInPrimesTest: XCTestCase {
    
    func testExample() {
        testing(2,100,110, (101, 103))
        testing(4,100,110, (103, 107))
        testingNil(6,100,110)
        testingNil(11,30000,100000)
        testing(2,10000000,11000000, (10000139, 10000141))
    }
    
    // MARK: - Private methods
    private func testing(_ g: Int, _ m: Int, _ n: Int, _ expected: (Int, Int)?) {
        XCTAssert(gap(g, m, n)! == expected!, "should return \(expected!)")
    }
    
    private func testingNil(_ g: Int, _ m: Int, _ n: Int) {
        XCTAssertTrue(gap(g, m, n) == nil, "Should return nil")
    }
}
