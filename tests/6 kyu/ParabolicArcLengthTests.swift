//
//  ParabolicArcLengthTests.swift
//  tests
//
//  Created by Sébastien Kothé on 04/02/2022.
//

import XCTest

class ParabolicArcLengthTests: XCTestCase {
    static var allTests = [
        ("lenCurve", testExample),
    ]
    
    func assertFuzzyEquals(_ actu: Double, _ expe: Double) {
        var inrange: Bool; let merr: Double = 1e-6; var e: Double;
        if expe == 0.0
        {e = abs(actu)}
        else
        {e = abs((actu - expe) / expe)}
        inrange = (e <= merr)
        if inrange == false {
            print(String(format:"Expected should be near: %.12f", expe));
            print(String(format:"but got: %.12f", actu))
        }
        else {print("..... GOOD")}
        XCTAssertEqual(inrange, true)
    }
    
    func dotest(_ n: Int, _ expected: Double) {
        print("n \(n)")
        assertFuzzyEquals(lenCurve(n), expected)
    }
    
    func testExample() {
        dotest(1, 1.414213562)
        dotest(10, 1.478197397)
        dotest(40, 1.478896272)
        dotest(200, 1.478940994)
        dotest(1200, 1.478942805)
        dotest(10000, 1.478942856)
        dotest(100000, 1.478942857)
    }
}
