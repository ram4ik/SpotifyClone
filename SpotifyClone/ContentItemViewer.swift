//
//  ContentItemViewer.swift
//  SpotifyClone
//
//  Created by Ramill Ibragimov on 01.10.2020.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 50)
                Image(systemName: "music.note")
                Text("Title")
                Text("Subtitle")
                Spacer()
            }
            VStack {
                Spacer()
                    .frame(width: 50, height: 200)
                Spacer()
                    .frame(width: 200)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
