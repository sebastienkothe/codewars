//
//  SplittingTheWorkloadPartOneTests.swift
//  tests
//
//  Created by Sébastien Kothé on 28/02/2022.
//

import XCTest

class SplittingTheWorkloadPartOneTests: XCTestCase {
    static let tests: [(difference: Int, list: [Int])] = [
        (42, [4, 27, 73]),
        (33, [58, 91]),
        (39, [68, 25, 70, 66]),
        (5, [2, 73, 76, 49, 27, 32]),
        (1, [11, 80, 84, 57, 60, 89, 81, 22, 68, 54, 44, 56, 16, 62, 51]), // Test
        (5, [88, 91, 35, 75, 2, 88, 32]),
        (0, [5, 45, 37, 46, 41, 36, 36]),
        (1, [62, 6, 16, 36, 69, 71, 91, 43, 90, 97, 92]),
        (0, [57, 11, 98, 80, 84, 34, 44, 80, 29, 33]),
        (10, [0, 20, 54, 99, 84, 99]),
        
        (0, [64, 51, 50, 31, 4, 91, 57, 73, 49]),
        (0, [23, 57, 32, 89, 16, 58, 2, 6, 54, 96, 72, 41, 6]),
        (1, [84, 47, 11, 55, 38, 32, 89, 21, 75, 16, 68, 95, 42]),
        (0, [98, 11, 49, 57, 44, 14, 53, 94, 98, 20, 4, 26]),
        (1, [89, 9, 42, 29, 17, 36, 85, 9, 55])
    ]
    
    static var allTests = [
        ("Basic Tests", tests),
    ]
    
    func tests() {
        for test in SplittingTheWorkloadPartOneTests.tests {
            let (list1, list2) = splitlist(test.list)
            XCTAssertEqual(abs(list1.reduce(0, +) - list2.reduce(0, +)), test.difference, "Testing with \(test.list), got \(list1) and \(list2)")
            XCTAssertEqual((list1 + list2).sorted(), test.list.sorted(), "Some items were removed or added when going from the input list to the output list when testing with \(test.list)")
        }
    }
}
