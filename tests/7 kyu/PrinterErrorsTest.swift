//
//  PrinterErrorsTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class PrinterErrorsTest: XCTestCase {
    
    func testBasic() {
        XCTAssertEqual("3/56", printerError("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"))
        XCTAssertEqual("6/60", printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"))
        XCTAssertEqual("11/65", printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"))
    }
    
    func testRandom() {
        for _ in 0..<200 {
            let sLen = rand(min: 20, max: 1000)
            var sData = Data()
            for _ in 0..<sLen {
                if rand(min: 0, max: 16) == 0 {
                    sData.append(UInt8(rand(min: 110, max: 122)))
                } else {
                    sData.append(UInt8(rand(min: 97, max: 109)))
                }
            }
            let s = String(data: sData, encoding: .ascii)!
            let errors = s.filter { $0 > "m" }
            let result = "\(errors.count)/\(sLen)"
            XCTAssertEqual(result, printerError(s))
        }
    }
    
    // MARK: - Private methods
    private func rand(min: Int, max: Int) -> Int {
        guard min >= 0 && max > min else {return -1}
        let limit = (max - min) + 1
        return (Int(arc4random()) % limit)+min
    }
    
}
