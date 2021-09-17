//
//  SquareIntoSquares.swift
//  tests
//
//  Created by Mosma on 16/09/2021.
//

import XCTest

class SquareIntoSquaresTest: XCTestCase {
    
    func testExample() {
        testing(50, [1,3,5,8,49])
        testing(44, [2,3,5,7,43])
        testing(625, [2,5,8,34,624])
        testing(5, [3,4])
        testing(7100, [2,3,5,119,7099])
        testing(1234567, [2,8,32,1571,1234566])
        testing(7654321, [6, 10, 69, 3912, 7654320])
        testing(2, [])
    }
    
    // MARK: - Private methods
    private func isInc(_ a: [Int]) -> Bool {
        let l = a.count
        if (l < 2) {return false}
        for i in 0..<l - 1 {
            if (a[i] >= a[i+1]) {
                return false;
            }
        }
        return true
    }
    
    private func verifNb(_ a: [Int], _ n: Int) -> Bool {
        let l = a.count
        var s = 0
        for i in 0..<l {
            s = s + a[i] * a[i]
        }
        return s == n * n
    }
    
    private func testing(_ n: Int, _ exp: [Int]) {
        print("n ", n)
        let actual = decompose(n);
        print("actual ", actual)
        print("expect ", exp)
        var success = false
        if (actual == exp) {
            print("Good")
            success = true
        } else {
            if (actual == []) {
                success = false
            } else {
                let st = isInc(actual);
                let t = verifNb(actual, n)
                if ((st == false) || (t == false)) {
                    print("Not increasinly sorted or bad sum of squares")
                    success = false
                }
                else {success = true}
            }
        }
        print("Success ", success)
        XCTAssertEqual(success, true)
    }
    
}
