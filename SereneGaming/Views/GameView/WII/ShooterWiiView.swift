//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterWiiView: View {
    var ShooterWii: ShooterWii
    
    var body: some View {
        HStack{
            VStack{
                Text(ShooterWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(ShooterWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct ShooterWiiView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterWiiView(ShooterWii: ShooterWiData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
