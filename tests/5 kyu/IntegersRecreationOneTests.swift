//
//  IntegersRecreationOneTests.swift
//  tests
//
//  Created by Sébastien Kothé on 21/02/2022.
//

import XCTest

class IntegersRecreationOneTests: XCTestCase {
    static var allTests = [
        ("listSquared", testExample),
    ]
    
    func testing(_ m: Int, _ n: Int, _ expected: [(Int, Int)]) {
        let ans  = listSquared(m, n)
        if ans.count == expected.count {
            for i in 0..<expected.count {
                XCTAssertTrue(ans[i] == expected[i], "Actual and Expected don't have same value at index \(i) -> expected \(expected[i])")
            }
        }
        else {XCTAssertEqual(ans.count, expected.count, "Actual and Expected don't have same length")}
    }
    
    func testExample() {
        testing(1, 250, [(1, 1), (42, 2500), (246, 84100)])
        testing(300, 600, [])
        testing(42, 250, [(42, 2500), (246, 84100)])
        testing(250, 500, [(287, 84100)])
    }
}
