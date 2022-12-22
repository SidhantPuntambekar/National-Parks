//
//  NationalParkList.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/21/22.
//

import Foundation
import SwiftUI

struct NationalParkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showVisitedOnly = false
    
    var visitedNationalParks: [NationalPark] {
        modelData.nationalParks.filter {
            nationalPark in (!showVisitedOnly || nationalPark.isVisited)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showVisitedOnly) {
                    Text("Visited Only")
                }
                
                ForEach(visitedNationalParks) {
                    park in
                    NavigationLink {
                        NationalParkDetailed(nationalPark: park)
                    } label: {
                        NationalParkRow(nationalPark: park)
                    }
                }
            }
            .navigationTitle("National Parks")
        }
    }
}

struct NationalPark_Previews: PreviewProvider {
    static var previews: some View {
        NationalParkList().environmentObject(ModelData())
    }
}
