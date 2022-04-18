//
//  SalesmanTravelTests.swift
//  codewars
//
//  Created by Sébastien Kothé on 17/04/2022.
//

import Foundation
import XCTest

class SalesmanTravelTests: XCTestCase {
    static let ad = ["123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,",
                     "54 Holy Grail Street Niagara Town ZP 32908,3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000,",
                     "10 Pussy Cat Rd. Chicago EX 34342,10 Gordon St. Atlanta RE 13000,58 Gordon Road Atlanta RE 13000,",
                     "22 Tokyo Av. Tedmondville SW 43098,674 Paris bd. Abbeville AA 45521,10 Surta Alley Goodtown GG 30654,",
                     "45 Holy Grail Al. Niagara Town ZP 32908,320 Main Al. Bern AE 56210,14 Gordon Park Atlanta RE 13000,",
                     "100 Pussy Cat Rd. Chicago EX 34342,2 Gordon St. Atlanta RE 13000,5 Gordon Road Atlanta RE 13000,",
                     "2200 Tokyo Av. Tedmondville SW 43098,67 Paris St. Abbeville AA 45521,11 Surta Avenue Goodtown GG 30654,",
                     "45 Holy Grail Al. Niagara Town ZP 32918,320 Main Al. Bern AE 56215,14 Gordon Park Atlanta RE 13200,",
                     "100 Pussy Cat Rd. Chicago EX 34345,2 Gordon St. Atlanta RE 13222,5 Gordon Road Atlanta RE 13001,",
                     "2200 Tokyo Av. Tedmondville SW 43198,67 Paris St. Abbeville AA 45522,11 Surta Avenue Goodville GG 30655,",
                     "2222 Tokyo Av. Tedmondville SW 43198,670 Paris St. Abbeville AA 45522,114 Surta Avenue Goodville GG 30655,",
                     "2 Holy Grail Street Niagara Town ZP 32908,3 Main Rd. Bern AE 56210,77 Gordon St. Atlanta RE 13000"
    ].joined();
    
    static let fixedTestValues = [
        ("AA 45522", "AA 45522:Paris St. Abbeville,Paris St. Abbeville/67,670"),
        ("EX 34342", "EX 34342:Pussy Cat Rd. Chicago,Pussy Cat Rd. Chicago/10,100"),
        ("EX 34345", "EX 34345:Pussy Cat Rd. Chicago/100"),
        ("AA 45521", "AA 45521:Paris bd. Abbeville,Paris St. Abbeville/674,67"),
        ("AE 56215", "AE 56215:Main Al. Bern/320")
    ]
    
    static var allTests = [
        ("Example Tests", test)
    ]
    
    func test() {
        for fixedTest in SalesmanTravelTests.fixedTestValues {
            XCTAssertEqual(travel(SalesmanTravelTests.ad, zipcode: fixedTest.0), fixedTest.1)
        }
    }
    
    // Next tests carried out in TDD
    func test_listDoesNotContainZipCode() {
        let list = "123 Main Street St. Louisville,432 Main Long Road St. Louisville,786 High Street Pollocksville"
        XCTAssertEqual(travel(list, zipcode: "OH 43071"), "OH 43071:/")
    }
    
    func test_listContainZipCode() {
        let list = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,"
        XCTAssertEqual(travel(list, zipcode: "OH 43071"), "OH 43071:Main Street St. Louisville,Main Long Road St. Louisville/123,432")
    }
    
    func test_zipCodeContainsLessThanFiveCharacters() {
        let zipCode = "OH 430"
        let list = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,54 Holy Grail Street Niagara Town ZP 32908,3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000,10 Pussy Cat Rd. Chicago EX 34342,10 Gordon St. Atlanta RE 13000,58 Gordon Road Atlanta RE 13000,22 Tokyo Av. Tedmondville SW 43098,674 Paris bd. Abbeville AA 45521,10 Surta Alley Goodtown GG 30654,45 Holy Grail Al. Niagara Town ZP 32908,320 Main Al. Bern AE 56210,14 Gordon Park Atlanta RE 13000,100 Pussy Cat Rd. Chicago EX 34342,2 Gordon St. Atlanta RE 13000,5 Gordon Road Atlanta RE 13000,2200 Tokyo Av. Tedmondville SW 43098,67 Paris St. Abbeville AA 45521,11 Surta Avenue Goodtown GG 30654,45 Holy Grail Al. Niagara Town ZP 32918,320 Main Al. Bern AE 56215,14 Gordon Park Atlanta RE 13200,100 Pussy Cat Rd. Chicago EX 34345,2 Gordon St. Atlanta RE 13222,5 Gordon Road Atlanta RE 13001,2200 Tokyo Av. Tedmondville SW 43198,67 Paris St. Abbeville AA 45522,11 Surta Avenue Goodville GG 30655,2222 Tokyo Av. Tedmondville SW 43198,670 Paris St. Abbeville AA 45522,114 Surta Avenue Goodville GG 30655,2 Holy Grail Street Niagara Town ZP 32908,3 Main Rd. Bern AE 56210,77 Gordon St. Atlanta RE 13000"
        XCTAssertEqual(travel(list, zipcode: zipCode), "OH 430:/")
    }
}
