//
//  CamelCaseMethodTests.swift
//  tests
//
//  Created by Sébastien Kothé on 23/02/2022.
//

import XCTest

class CamelCaseMethodTests: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]
    
    func testBasics() {
        XCTAssertEqual(camelCase("test case"), "TestCase")
        XCTAssertEqual(camelCase("camel case method"), "CamelCaseMethod")
        XCTAssertEqual(camelCase("say hello "), "SayHello")
        XCTAssertEqual(camelCase(" camel case word"), "CamelCaseWord")
        XCTAssertEqual(camelCase(""), "")
    }
}
