//
//  HelpTheBookSellerTests.swift
//  tests
//
//  Created by Sébastien Kothé on 01/02/2022.
//

import XCTest

class HelpTheBookSellerTests: XCTestCase {
    
    func testExample() {
        let b = ["ROXANNE 102", "RHODODE 123", "BKWRKAA 125", "BTSQZFG 239", "DRTYMKH 060"]
        let c =  [String]()
        XCTAssertEqual(stockList(b, c), "")
    }
}
