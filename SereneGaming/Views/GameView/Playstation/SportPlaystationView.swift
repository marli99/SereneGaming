//
//  SportXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportPlaystationView: View {
    var SportSimPlaystation: SportSimPlaystation
    var body: some View {
        HStack{
            VStack{
                Text(SportSimPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(SportSimPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct SportPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        SportPlaystationView(SportSimPlaystation: SportPlaystationData[0])
        .previewLayout(.sizeThatFits)
        .padding(4)
    }
}
