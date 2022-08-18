//
//  ShooterXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterPlaystationView: View {
    var ShooterPlaystation: ShooterPlaystation
    
    var body: some View {
        HStack{
            VStack{
                Text(ShooterPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(ShooterPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct ShooterPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterPlaystationView(ShooterPlaystation: ShooterPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
