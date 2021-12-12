//
//  Character.swift
//  AvengersApp
//
//  Created by Donato Gomez on 6/12/21.
//

import Foundation

typealias Characters = [Character]

struct Character {
    var image: String?
    var name: String?
    var description: String?
    var isHeroe: Bool?
    var winBattle: [Bool] = []
}
