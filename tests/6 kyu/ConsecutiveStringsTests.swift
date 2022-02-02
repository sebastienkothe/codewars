//
//  ConsecutiveStringsTests.swift
//  tests
//
//  Created by Sébastien Kothé on 02/02/2022.
//

import XCTest

class ConsecutiveStringsTests: XCTestCase {
    func tests() {
        XCTAssertEqual(longestConsec(["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], 2), "folingtrashy")
        XCTAssertEqual(longestConsec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2), "abigailtheta")
        XCTAssertEqual(longestConsec([String](), 2), "")
        XCTAssertEqual(longestConsec([""], 2), "")
        XCTAssertEqual(longestConsec(["tree"], 2), "")
        XCTAssertEqual(longestConsec(["tree"], -1), "")
        XCTAssertEqual(longestConsec(["tree"], 0), "")
        XCTAssertEqual(longestConsec(["tree", "tree", "tree"], 3), "treetreetree")
        XCTAssertEqual(longestConsec(["tree", "tree", "tree"], 4), "")
        XCTAssertEqual(longestConsec(["tree", "tree", "tree", "tree"], 3), "treetreetree")
        XCTAssertEqual(longestConsec(["tree", "tree", "tree", "tree"], 1), "tree")
        XCTAssertEqual(longestConsec(["tree", "loutre", "tree", "loutre"], 1), "loutre")
        XCTAssertEqual(longestConsec(["tree", "loutre", "tree", "loutre"], 3), "loutretreeloutre")
    }
}
