//
//  DirectionsReductionTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class DirectionsReductionTest: XCTestCase {
    
    func testExample() {
        var a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
        testing(a, ["WEST"])
        a = ["NORTH", "WEST", "SOUTH", "EAST"]
        testing(a, ["NORTH", "WEST", "SOUTH", "EAST"])
        a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "NORTH"]
        testing(a, ["NORTH"])
        a = ["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]
        testing(a, ["EAST", "NORTH"])
        a = ["NORTH", "EAST", "NORTH", "EAST", "WEST", "WEST", "EAST", "EAST", "WEST", "SOUTH"]
        testing(a, ["NORTH", "EAST"])
        
        testing( ["WEST","WEST","EAST","EAST","WEST","SOUTH","NORTH","SOUTH"] , ["WEST","SOUTH"] )
        testing( ["NORTH","WEST","EAST","EAST","SOUTH"] ,  ["NORTH","EAST","SOUTH"] )
        testing( ["SOUTH","SOUTH","SOUTH","NORTH","SOUTH","NORTH","WEST","EAST"] ,  ["SOUTH","SOUTH"] )
        testing( ["WEST","EAST","EAST","SOUTH","NORTH"] ,  ["EAST"] )
        testing( ["WEST","EAST","SOUTH","WEST","EAST"] ,  ["SOUTH"] )
        
        testing( ["NORTH","EAST","SOUTH","NORTH","SOUTH","NORTH"] , ["NORTH","EAST"] )
        testing( ["NORTH","SOUTH","WEST","NORTH","NORTH"] ,  ["WEST","NORTH","NORTH"] )
        testing( ["NORTH","NORTH","NORTH","NORTH","SOUTH","SOUTH","WEST"] ,  ["NORTH","NORTH","WEST"] )
        testing( ["NORTH","WEST","EAST","WEST","EAST","WEST"] ,  ["NORTH","WEST"] )
        testing( ["EAST","WEST","NORTH","EAST","NORTH"] ,  ["NORTH","EAST","NORTH"] )
        testing( ["WEST","NORTH","EAST","NORTH","WEST"] ,  ["WEST","NORTH","EAST","NORTH","WEST"] )
        testing( ["EAST","SOUTH","SOUTH","SOUTH","EAST","NORTH","NORTH"] ,  ["EAST","SOUTH","SOUTH","SOUTH","EAST","NORTH","NORTH"] )
        testing( ["NORTH","EAST","SOUTH","EAST","WEST","NORTH"] ,  ["NORTH","EAST"] )
        testing( ["WEST","EAST","SOUTH","EAST","WEST","WEST"] ,  ["SOUTH","WEST"] )
        testing( ["SOUTH","NORTH","SOUTH","EAST","SOUTH","EAST","EAST"] ,  ["SOUTH","EAST","SOUTH","EAST","EAST"] )
    }
    
    // MARK: - Private methods
    private func testing(_ arr: [String], _ expected: [String]) {
        let ans = dirReduc(arr)
        XCTAssertTrue(ans == expected, "should return \(expected), got \(ans)")
    }
}
