//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportWiiView: View {
    var SportWii: SportWii
    var body: some View {
        HStack{
            VStack{
                Text(SportWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SportWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SportWiiView_Previews: PreviewProvider {
    static var previews: some View {
        SportWiiView(SportWii: SportWiiData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
