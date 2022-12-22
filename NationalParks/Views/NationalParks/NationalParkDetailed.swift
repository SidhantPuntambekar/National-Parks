//
//  NationalParkDetailed.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/21/22.
//

import Foundation
import SwiftUI

struct NationalParkDetailed: View {
    @EnvironmentObject var modelData: ModelData
    var nationalPark: NationalPark
    
    var nationalParkIdx: Int {
        modelData.nationalParks.firstIndex(where: { $0.id == nationalPark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: nationalPark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: nationalPark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(nationalPark.name).font(.title)
                    
                    VisitedButton(isSet: $modelData.nationalParks[nationalParkIdx].isVisited)
                }
                
                HStack {
                    Text(nationalPark.city)
                    Spacer()
                    Text(nationalPark.state)
                }.font(.subheadline).foregroundColor(.secondary)
                
                Divider()
                
                Text("\(nationalPark.name) Description").font(.title2)
                Text(nationalPark.description)
            }.padding()
        }
        .navigationTitle(nationalPark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NationalParkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        NationalParkDetailed(nationalPark: modelData.nationalParks[0]).environmentObject(modelData)
    }
}
