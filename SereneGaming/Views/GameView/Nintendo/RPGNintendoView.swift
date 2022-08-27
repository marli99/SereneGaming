//
//  RPG.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct RPGNintendoView: View {
    var RPGNintendo: RPGNintendo
    var body: some View {
        HStack{
            VStack{
                Text(RPGNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(RPGNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct RPGNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        RPGNintendoView(RPGNintendo: RPGNintendoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
