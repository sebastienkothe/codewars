//
//  Int32ToIPv4Test.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class Int32ToIPv4Test: XCTestCase {
    
    func testBasics() {
        XCTAssertEqual(ipv4(of: 2154959208), "128.114.17.104")
        XCTAssertEqual(ipv4(of: 0), "0.0.0.0")
        XCTAssertEqual(ipv4(of: 2149583361), "128.32.10.1")
    }
    
    func testRandom() {
        for r32 in (1...100).map({ _ in UInt32.random(in: 0...UINT32_MAX)}) {
            XCTAssertEqual(ipv4(of: r32), sol(r32), "Failed for input \(r32)")
        }
    }
    
    // MARK: - Private properties
    private let sol: (UInt32) -> String = { i32 in
        withUnsafeBytes(of: i32.bigEndian) { bytes in
            return bytes.map { "\($0)" }.joined(separator: ".")
        }
    }
}
