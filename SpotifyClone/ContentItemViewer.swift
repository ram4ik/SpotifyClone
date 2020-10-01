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
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                            .frame(height: 200)
                            .background(Color.red.opacity(0.3))
                    }
                    VStack {
                        ForEach(0..<30) { indicator in
                            HStack {
                                Text("\(indicator)")
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }.background(Color.yellow.opacity(0.1))
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
