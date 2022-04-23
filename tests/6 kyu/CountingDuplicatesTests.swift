//
//  CountingDuplicatesTests.swift
//  tests
//
//  Created by Sébastien Kothé on 23/04/2022.
//

import XCTest

func checkAll() {
    check("abcde", 0)
    check("abcdea", 1)
    check("indivisibility", 1)
}

func check(_ s:String, _ c:Int) {
    XCTAssertEqual(countDuplicates(s), c)
}

class CountingDuplicatesTests: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]
    
    func testExample() {
        checkAll()
    }
    
    // TDD
    func test_NoCharacterIsRepeated() {
        XCTAssertEqual(countDuplicates("abcde"), 0)
    }
    
    func test_OneCharacterIsRepeated() {
        XCTAssertEqual(countDuplicates("abcdea"), 1)
    }
    
    func test_OneCharacterIsCapitalized() {
        XCTAssertEqual(countDuplicates("aabBcde"), 2)
    }
    
    func test_OneCharacterIsCapitalizedAndResultShouldBeTwo() {
        XCTAssertEqual(countDuplicates("Indivisibilities"), 2)
    }
    
    func test_ResultShouldBeTwentySix() {
        XCTAssertEqual(countDuplicates("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"), 26)
    }
}
