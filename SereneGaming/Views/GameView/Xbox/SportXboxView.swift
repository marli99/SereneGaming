//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportXboxView: View {
    var SportSimXbox: SportSimXbox
    var body: some View {
        HStack{
            VStack{
                Text(SportSimXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SportSimXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SportXboxView_Previews: PreviewProvider {
    static var previews: some View {
        SportXboxView(SportSimXbox: SportXboxData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
