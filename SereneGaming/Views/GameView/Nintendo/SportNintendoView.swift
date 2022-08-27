//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportNintendoView: View {
    var SportNintendo: SportNintendo
    var body: some View {
        HStack{
            VStack{
                Text(SportNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SportNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SportNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        SportNintendoView(SportNintendo: SportNintendoiData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
