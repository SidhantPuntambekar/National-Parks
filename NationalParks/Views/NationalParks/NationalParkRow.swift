//
//  NationalParkRow.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/21/22.
//

import Foundation
import SwiftUI

struct NationalParkRow: View {
    var nationalPark: NationalPark
    
    var body: some View {
        HStack {
            nationalPark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(nationalPark.name)
            
            Spacer()
            
            if nationalPark.isVisited {
                Image(systemName: "checkbox.square.fill").foregroundColor(.green)
            }
        }
    }
}

struct NationalParkRow_Previews: PreviewProvider {
    static var nationalParks = ModelData().nationalParks
    
    static var previews: some View {
        Group {
            NationalParkRow(nationalPark: nationalParks[0])
            NationalParkRow(nationalPark: nationalParks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
