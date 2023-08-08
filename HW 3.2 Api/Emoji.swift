//
//  Emoji.swift
//  HW 3.2 Api
//
//  Created by Артём Потёмкин on 08.08.2023.
//

struct Emoji: Decodable {
    let name: String
    let category: String
    let group: String
    let htmlCode: [String]
    let unicode: [String]
}
