//
//  HelpTheBookSeller.swift
//  codewars
//
//  Created by Sébastien Kothé on 01/02/2022.
//

import Foundation

func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    if listOfArt.count == 0 || listOfCat.count == 0 { return "" }
    
    var i = 0
    var str = String()
    var totalNumberOfBooksPerCategory = Int()
    
    while i != listOfCat.count {
        let category = listOfCat[i].first!
        
        for code in listOfArt where code.first == category {
            let numberOfBooksAsStr = code.split(separator: " ").last!
            let numberOfBooksAsInt = Int(String(numberOfBooksAsStr))!
            totalNumberOfBooksPerCategory += numberOfBooksAsInt
        }
        
        str.append("(\(category) : \(totalNumberOfBooksPerCategory))")
        if i != listOfCat.count - 1 { str.append(" - ") }
        totalNumberOfBooksPerCategory = 0
        i += 1
    }
    
    return str
}
