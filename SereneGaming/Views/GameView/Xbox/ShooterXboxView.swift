//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterXboxView: View {
    var ShooterXbox: ShooterXbox
    
    var body: some View {
        HStack{
            VStack{
                Text(ShooterXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(ShooterXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct ShooterXboxView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterXboxView(ShooterXbox: ShooterXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
