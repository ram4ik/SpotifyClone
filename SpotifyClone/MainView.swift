//
//  MainView.swift
//  SpotifyClone
//
//  Created by Ramill Ibragimov on 01.10.2020.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    HomeView()
                        .tabItem {
                            VStack {
                                Image(systemName: "house")
                                Text("Home")
                            }
                        }
                        .tag(1)
                    
                    SearchView()
                        .tabItem {
                            VStack {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                            }
                            
                        }
                        .tag(2)
                })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
