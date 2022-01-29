//
//  Multiples of 3 or 5.swift
//  tests
//
//  Created by Sébastien Kothé on 28/01/2022.
//

import XCTest

class MultiplesOf3Or5Tests: XCTestCase {
    
    func test_multiples_of_3_or_5() {
        XCTAssertEqual(findMultiples(10), 23)
        XCTAssertEqual(findMultiples(20), 78)
        XCTAssertEqual(findMultiples(200), 9168)
        XCTAssertEqual(findMultiples(300), 20850)
        XCTAssertEqual(findMultiples(320), 23628)
    }
}
