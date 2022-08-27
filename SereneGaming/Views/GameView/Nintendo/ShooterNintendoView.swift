//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterNintendoView: View {
    var ShooterNintendo: ShooterNintendo
    
    var body: some View {
        HStack{
            VStack{
                Text(ShooterNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(ShooterNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct ShooterNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterNintendoView(ShooterNintendo: ShooterNintendoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
