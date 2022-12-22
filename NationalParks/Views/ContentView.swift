//
//  ContentView.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/20/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .visited
    
    enum Tab {
        case visited
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("National Parks", systemImage: "star")
                }
                .tag(Tab.visited)

            NationalParkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
