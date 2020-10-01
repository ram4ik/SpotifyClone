//
//  ContentItemViewer.swift
//  SpotifyClone
//
//  Created by Ramill Ibragimov on 01.10.2020.
//

import SwiftUI

struct ContentItemViewer: View {
    
    var topSpacerHeight: CGFloat = 400
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 50)
                Image("norah")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Nora Jones")
                    .foregroundColor(.white)
                Text("Little Broken Hearts")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                Spacer()
            }
            ScrollView {
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                            .frame(height: topSpacerHeight)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.clear, Color.clear, Color.black]), startPoint: .top, endPoint: .bottom))
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
