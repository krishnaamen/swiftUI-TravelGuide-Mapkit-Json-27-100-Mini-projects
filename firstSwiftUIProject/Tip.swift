//
//  Tip.swift
//  firstSwiftUIProject
//
//  Created by Macbook on 29/07/2021.
//

import Foundation
struct Tip: Decodable {
    let text:String
    let children: [Tip]?
}
