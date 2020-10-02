//
//  ContentItemViewer.swift
//  SpotifyClone
//
//  Created by Ramill Ibragimov on 01.10.2020.
//

import SwiftUI

struct ContentItemViewer: View {
    
    var topSpacerHeight: CGFloat = 400
    @State var playButtonOffset: CGFloat = 335
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), Color.black, Color.black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 50)
                Image("norah")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Nora Jones")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                Text("Little Broken Hearts")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size: 16, weight: .medium))
                Spacer()
            }
            ScrollView {
                
                GeometryReader { geo -> AnyView? in
                    let thisOffset = geo.frame(in: .global).minY
                    if thisOffset > -300 {
                        playButtonOffset = thisOffset
                    } else {
                        playButtonOffset = -300
                    }
                    return nil
                }
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                            .frame(height: topSpacerHeight)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.clear, Color.clear, Color.black]), startPoint: .top, endPoint: .bottom))
                    }
                    VStack {
                        ForEach(0..<30) { indicator in
                            HStack {
                                CellView()
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }.background(Color.clear)
            }
            
            VStack {
                Spacer()
                    .frame(height: playButtonOffset + 300)
                Text("PLAY")
                    .foregroundColor(.white)
                    .frame(width: 240, height: 50)
                    .background(Color.init(red: 30/255, green: 215/255, blue: 96/255))
                    .cornerRadius(25)
                    .font(.system(size: 20, weight: .bold))
                    .shadow(radius: 20)
                Spacer()
            }
            
            //DEBUG
            VStack {
                Text("\(playButtonOffset)")
                    .foregroundColor(.yellow)
                Spacer()
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
