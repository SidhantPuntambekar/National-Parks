//
//  NationalParks.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct NationalPark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var description: String
    var isVisited: Bool
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case alaska = "Alaska"
        case americanSamoa = "American Samoa"
        case arizona = "Arizona"
        case arkansas = "Arkansas"
        case california = "California"
        case colorado = "Colorado"
        case florida = "Florida"
        case hawaii = "Hawaii"
        case kentucky = "Kentucky"
        case indiana = "Indiana"
        case maine = "Maine"
        case michigan = "Michigan"
        case minnesota = "Minnesota"
        case missouri = "Missouri"
        case montana = "Montana"
        case nevada = "Nevada"
        case newMexico = "New Mexico"
        case northDakota = "North Dakota"
        case northCarolina = "North Carolina"
        case ohio = "Ohio"
        case oregon = "Oregon"
        case southCarolina = "South Carolina"
        case southDakota = "South Dakota"
        case tennessee = "Tennessee"
        case texas = "Texas"
        case utah = "Utah"
        case virginIslands = "US Virgin Islands"
        case virginia = "Virginia"
        case washington = "Washington"
        case westVirginia = "West Virginia"
        case wyoming = "Wyoming"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

