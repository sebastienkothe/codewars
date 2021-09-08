//
//  DecimalFactorialBackTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class DecimalFactorialBackTest: XCTestCase {
    
    func testExample1() {
        testing1(2982, "4041000")
        testing1(463, "341010")
        testing1(36288000, "A0000000000")
        testing1(3628800054, "76A0000021000")
        testing1(1273928000, "27A0533231100")
        testing1(220, "140200")
        testing1(1936295, "5301133210")
        testing1(81440635, "204365543010")
        testing1(14808485, "40721200210")
        testing1(3395, "4411210")
        testing1(92, "33100")
        testing1(4881, "6431110")
        testing1(174720, "424400000")
        testing1(5897, "11102210")
        testing1(1947, "2410110")
        testing1(1575088, "4303332200")
        testing1(49124, "115113100")
        testing1(9376317, "25742343110")
        testing1(449, "332210")
        testing1(112, "42200")
        testing1(64269, "145123110")
        testing1(6742089, "18515001110")
        testing1(86565208, "218474232200")
        testing1(1806792694, "3929024133200")
        testing1(12942219, "35576140110")
    }
    
    func testExample2() {
        testing2("4041000", 2982)
        testing2("27A0533231100", 1273928000)
        testing2("341010", 463)
        testing2("65341010", 34303)
        testing2("1461330110", 555555)
        testing2("13573044440000", 7890123456)
        testing2("1630614043233100", 1849669781372)
        testing2("150636011110", 58322193)
        testing2("1662032340200", 741017980)
        testing2("194B99466413200", 145612691086)
        testing2("51465021000", 18702054)
        testing2("445212100", 185318)
        testing2("1000100", 722)
        testing2("522200", 664)
        testing2("2000", 12)
        testing2("331703501110", 131284689)
        testing2("86CB45050343200", 740991913678)
        testing2("112086032303100", 94394539820)
        testing2("30A3700211000", 1474663950)
        testing2("156B92750141010", 121660182223)
    }
    
    // MARK: - Private methods
    private func testing1(_ nb: Int, _ expected: String) {
        XCTAssertEqual(dec2FactString(nb), expected, "should return \(expected)")
    }
    
    private func testing2(_ s: String, _ expected: Int) {
        XCTAssertEqual(factString2dDec(s), expected, "Should return \(expected)")
    }
}
