//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerNintendoView: View {
    var MultiNintendo: MultiNintendo
    
    var body: some View {
        HStack{
            VStack{
                Text(MultiNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(MultiNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct MultiplayerNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerNintendoView(MultiNintendo: MultiplayerNintendoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
