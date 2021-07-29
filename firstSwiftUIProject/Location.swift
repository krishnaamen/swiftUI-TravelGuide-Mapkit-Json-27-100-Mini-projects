//
//  Location.swift
//  firstSwiftUIProject
//
//  Created by Macbook on 29/07/2021.
//

import Foundation
struct Location: Decodable,Identifiable{
    let id: Int
    let name: String
    let country:String
    let description: String
    let more: String
    let latitude: Double
    let longitude:Double
    let heroPicture:String
    let advisory: String
    static let example = Location(id: 1, name: "Great smokey mountain", country: "United states", description: "A great place to visit", more: "More text here", latitude: 35.674, longitude: -83.9898, heroPicture: "smokies", advisory: "Beware of the bears!")
}
