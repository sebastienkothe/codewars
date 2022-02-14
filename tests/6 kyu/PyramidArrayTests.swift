//
//  PyramidArrayTests.swift
//  tests
//
//  Created by Sébastien Kothé on 14/02/2022.
//

import XCTest

class PyramidArrayTests: XCTestCase {
    func tests() {
        XCTAssertEqual(pyramid(0), [])
        XCTAssertEqual(pyramid(1), [[1]])
        XCTAssertEqual(pyramid(2), [[1], [1, 1]])
        XCTAssertEqual(pyramid(3), [[1], [1, 1], [1, 1, 1]])
    }
}
