//
//  TemporaryCardContentGenerator.swift
//  Demo
//
//  Created by Ayush Singh on 11/13/24.
//

import Foundation

let fallVibes = StickerPack(title: "Fall Vibes", count: 40, content: ["🍂🍂"])
let cozyChristmas = ["🎅🏻", "☃️", "☕️"]
let movie = ["🎬", "🎞️", "🍿"]


func returnRandomContent() -> [String] {
    let randomNumber = Int.random(in: 1...3)
    
    switch randomNumber {
    case 1:
        return cozyChristmas
    case 2:
        return cozyChristmas
    case 3:
        return movie
    default:
        return [""]
    }
}


