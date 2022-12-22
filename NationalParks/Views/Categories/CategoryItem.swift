//
//  CategoryItem.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import Foundation
import SwiftUI

struct CategoryItem: View {
    var nationalPark: NationalPark
    
    var body: some View {
        VStack(alignment: .leading) {
            nationalPark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(nationalPark.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(nationalPark: ModelData().nationalParks[0])
    }
}
