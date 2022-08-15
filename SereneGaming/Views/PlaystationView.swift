//
//  PlaystationView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct PlaystationView: View{
    var playstation: Playstation
    
    var body: some View{
        VStack{
            Text(playstation.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.white)
                .hoverEffect(.automatic)
                .padding(.top, 20)
            
            Image(playstation.Image)
                .renderingMode(.original)
                .resizable()
                
                .frame(width: 320, height: 210, alignment: .leading)
                .cornerRadius(8)
            
//            
//            VStack(alignment: .leading, spacing: 5){
//                Text(playstation.name)
//                    .font(.title)
//                    .foregroundColor(.white)
//                Text(playstation.price)
//                    .foregroundColor(.white)
//                    .font(.title3)
//            }
        }
    }
}

struct PlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        PlaystationView(playstation: PlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
