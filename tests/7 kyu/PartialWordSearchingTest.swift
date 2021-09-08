//
//  PartialWordSearchingTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class PartialWordSearchingTest: XCTestCase {
    
    func testWordSearch() {
        XCTAssertEqual(wordSearch("ab", ["za", "ab", "abc", "zab", "zbc"]), ["ab", "abc", "zab"])
        XCTAssertEqual(wordSearch("aB", ["za", "ab", "abc", "zab", "zbc"]), ["ab", "abc", "zab"])
        XCTAssertEqual(wordSearch("ab", ["za", "aB", "Abc", "zAB", "zbc"]), ["aB", "Abc", "zAB"])
        XCTAssertEqual(wordSearch("abcd", ["za", "aB", "Abc", "zAB", "zbc"]), ["Empty"])
        XCTAssertEqual(wordSearch("me", ["home", "milk", "Mercury", "fish"]), ["home", "Mercury"])
    }
    
    func testWordSearchEdgeCases() {
        XCTAssertEqual(wordSearch("ab", []), ["Empty"])
        XCTAssertEqual(wordSearch("", []), ["Empty"])
        XCTAssertEqual(wordSearch("", ["ab"]), ["Empty"])
        XCTAssertEqual(wordSearch("", [""]), ["Empty"])
        XCTAssertEqual(wordSearch("Empty", ["Empty"]), ["Empty"])
    }
}
