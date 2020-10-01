//
//  CellView.swift
//  SpotifyClone
//
//  Created by Ramill Ibragimov on 01.10.2020.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        HStack {
            Image(systemName: "timelapse")
                .padding(.trailing, 10)
            Text("Title")
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding(15)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
