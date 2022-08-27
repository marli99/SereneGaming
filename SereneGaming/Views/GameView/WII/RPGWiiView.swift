//
//  RPG.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct RPGWiiView: View {
    var RPGWii: RPGWii
    var body: some View {
        HStack{
            VStack{
                Text(RPGWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(RPGWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct RPGWiiView_Previews: PreviewProvider {
    static var previews: some View {
        RPGWiiView(RPGWii: RPGPWiiData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
