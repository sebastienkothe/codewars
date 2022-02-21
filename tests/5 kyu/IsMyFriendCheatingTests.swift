//
//  IsMyFriendCheatingTests.swift
//  tests
//
//  Created by Sébastien Kothé on 20/02/2022.
//

import XCTest

class IsMyFriendCheatingTests: XCTestCase {
    
    static var allTests = [
        ("Basic Tests", tests),
    ]
    
    func tests() {
        XCTAssertTrue(removNb(26) == [(15,21),(21,15)])
        XCTAssertTrue(removNb(100) == [])
        XCTAssertTrue(removNb(37) == [(21,31),(31,21)])
        XCTAssertTrue(removNb(101) == [(55,91),(91,55)])
    }
}

func ==<T0: Equatable, T1: Equatable>(lhs: [(T0, T1)], rhs: [(T0, T1)]) -> Bool {
    if lhs.count != rhs.count {
        return false
    }
    for (index, value) in lhs.enumerated() {
        if !(value == rhs[index]) {
            return false
        }
    }
    return true
}
