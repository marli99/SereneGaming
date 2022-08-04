//
//  WiiView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct WiiView: View{
    var WII: Wii
    
    var body: some View{
        VStack{
            Image(WII.Image)
                .renderingMode(.original)
                .resizable()
                
                .frame(width: 320, height: 210, alignment: .leading)
                .background(Color.white)
                .cornerRadius(8)
            Text(WII.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.black)
                .hoverEffect(.automatic)
                .padding(.top, 0)
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

struct WiiView_Previews: PreviewProvider {
    static var previews: some View {
        WiiView(WII: WiiData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
