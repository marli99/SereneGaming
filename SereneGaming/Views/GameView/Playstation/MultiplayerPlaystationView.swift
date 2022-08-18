//
//  MultiplayerXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerPlaystationView: View {
    var MultiPlaystation: MultiPlaystation
    var body: some View {
        HStack{
            VStack{
                Text(MultiPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(MultiPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct MultiplayerPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerPlaystationView(MultiPlaystation: MultiplayerPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
