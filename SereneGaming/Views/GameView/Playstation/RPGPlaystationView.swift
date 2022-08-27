//
//  RPG.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct RPGPlaystationView: View {
    var RPGPlaystation: RPGPlaystation
    var body: some View {
        HStack{
            VStack{
                Text(RPGPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(RPGPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct RPGPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        RPGPlaystationView(RPGPlaystation: RPGPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
