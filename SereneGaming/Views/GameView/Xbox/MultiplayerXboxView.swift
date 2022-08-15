//
//  MultiplayerXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerXboxView: View {
    var MultiXbox: MultiXbox
    var body: some View {
        HStack{
            VStack{
                Text(MultiXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(MultiXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct MultiplayerXboxView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerXboxView(MultiXbox: MultiplayerXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
