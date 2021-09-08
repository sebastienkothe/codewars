//
//  TwoSumTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class TwoSumTest: XCTestCase {
    
    func test1() {
        let actual = [0,2]
        XCTAssertEqual(actual, Solution.twosum(numbers: [1,2,3], target: 4))
    }
    
    func test2() {
        let actual = [1,2]
        XCTAssertEqual(actual, Solution.twosum(numbers: [1234,5678,9012], target: 14690))
    }
    
    func test3() {
        let actual = [0,1]
        XCTAssertEqual(actual, Solution.twosum(numbers: [2,2,3], target: 4))
    }
    
    func test4() {
        let actual = [2,3]
        XCTAssertEqual(actual, Solution.twosum(numbers: [1,54,24,35], target: 59))
    }
}
