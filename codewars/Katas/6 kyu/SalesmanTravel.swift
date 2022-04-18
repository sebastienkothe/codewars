//
//  SalesmanTravel.swift
//  codewars
//
//  Created by Sébastien Kothé on 17/04/2022.
//

import Foundation

func travel(_ r: String, zipcode: String) -> String {
    let decomposedZipCode = zipcode.split(separator: " ")
    guard r.contains(zipcode) && decomposedZipCode[1].count == 5 else { return "\(zipcode):/" }
    var houseNumbers = [String](); var cities = [String](); var filteredList = ""
    
    let addresses = r
        .replacingOccurrences(of: zipcode, with: "")
        .split(separator: ",")
        .filter { $0.last == " " }
        .map { String($0.trimmingCharacters(in: .whitespaces)) }
    
    for address in addresses {
        let number = address.filter { $0.isNumber }
        houseNumbers.append(number)
        cities.append(address.replacingOccurrences(of: number, with: "").trimmingCharacters(in: .whitespacesAndNewlines))
    }
    
    for (i, city) in cities.enumerated() {
        filteredList += city
        if i != cities.count - 1 { filteredList.append(",") }
        if i == cities.count - 1 {
            filteredList.append("/")
            for (i, number) in houseNumbers.enumerated() {
                filteredList += number
                if i != houseNumbers.count - 1 { filteredList.append(",") }
            }
        }
    }
    
    return "\(zipcode):\(filteredList)"
}
