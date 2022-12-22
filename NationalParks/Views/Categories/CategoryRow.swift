//
//  CategoryRow.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var parks: [NationalPark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
            .font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(parks) { park in
                        NavigationLink {
                            NationalParkDetailed(nationalPark: park)
                        } label: {
                            CategoryItem(nationalPark: park)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var nationalParks = ModelData().nationalParks
    
    static var previews: some View {
        CategoryRow(
            categoryName: nationalParks[0].category.rawValue,
            parks: Array(nationalParks.prefix(5)))
    }
}
