//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct PuzzleNintendoView: View {
    var PuzzleNintendo: PuzzleNintendo
    var body: some View {
        HStack{
            VStack{
                Text(PuzzleNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(PuzzleNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct PuzzleNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleNintendoView(PuzzleNintendo: PuzzleNintendoData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
