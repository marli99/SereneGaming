//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerWiiView: View {
    var MultiWii: MultiWii
    
    var body: some View {
        HStack{
            VStack{
                Text(MultiWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(MultiWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct MultiplayerWiiView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerWiiView(MultiWii: MultiplayerWiiData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
