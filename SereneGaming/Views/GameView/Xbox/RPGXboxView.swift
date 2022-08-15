//
//  RPG.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct RPGXboxView: View {
    var RPGXbox: RPGXbox
    var body: some View {
        HStack{
            VStack{
                Text(RPGXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(RPGXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct RPGXboxView_Previews: PreviewProvider {
    static var previews: some View {
        RPGXboxView(RPGXbox: RPGXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
