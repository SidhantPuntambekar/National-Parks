//
//  NationalParksApp.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import SwiftUI

@main
struct NationalParksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
