//
//  GiveMeADiamondTests.swift
//  tests
//
//  Created by Sébastien Kothé on 30/01/2022.
//

import XCTest

class GiveMeADiamondTests: XCTestCase {
    func tests() {
        XCTAssertEqual(diamond(3)!, " *\n***\n *\n")
        XCTAssertEqual(diamond(5)!, "  *\n ***\n*****\n ***\n  *\n")
        XCTAssertEqual(diamond(9), "    *\n   ***\n  *****\n *******\n*********\n *******\n  *****\n   ***\n    *\n")
        XCTAssertEqual(diamond(13)!, "      *\n     ***\n    *****\n   *******\n  *********\n ***********\n*************\n ***********\n  *********\n   *******\n    *****\n     ***\n      *\n")
        XCTAssertEqual(diamond(1), "*\n")
    }
}

