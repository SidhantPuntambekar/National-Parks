//
//  CategoryHome.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, parks: modelData.categories[key]!)
                }
            }
            .navigationTitle("National Parks")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
