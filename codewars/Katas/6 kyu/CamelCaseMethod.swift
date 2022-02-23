//
//  CamelCaseMethod.swift
//  codewars
//
//  Created by Sébastien Kothé on 23/02/2022.
//

import Foundation

func camelCase(_ str: String) -> String {
    return str.split(separator: " ").compactMap { $0.capitalized }.joined()
}
