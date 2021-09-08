//
//  PartialWordSearching.swift
//  codewars
//
//  Created by Mosma on 08/09/2021.
//

import Foundation

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let response = arr.filter { $0.lowercased().contains(str.lowercased()) }
    return response != [] ? response : ["Empty"]
}
