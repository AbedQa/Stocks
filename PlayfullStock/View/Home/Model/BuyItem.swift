//
//  BuyItem.swift
//  PlayfullStock
//
//  Created by AbdelrahmanQasim on 1/13/22.
//

import Foundation

struct BuyItem: Identifiable {
    var id: String = UUID().uuidString
    var logo: String
    var title: String
    var price: String
    var colors: [String]
}

var buyItemList: [BuyItem] = [
    .init(logo: "apple", title: "AAPL", price: "$ 364.11", colors: [
        "#000000","#676767"
    ]),
    .init(logo: "mac", title: "MCD", price: "$ 183.52", colors: [
        "#E80B0B","#DC4F00"
    ]),
    .init(logo: "facebook", title: "FB", price: "$233.42.11", colors: [
        "#0038FF","#5CE2FF"
    ]),
]
