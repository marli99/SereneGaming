//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct PuzzleWiiView: View {
    var PuzzleWii: PuzzleWii
    var body: some View {
        HStack{
            VStack{
                Text(PuzzleWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(PuzzleWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct PuzzleWiiView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleWiiView(PuzzleWii: PuzzleWiiData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
