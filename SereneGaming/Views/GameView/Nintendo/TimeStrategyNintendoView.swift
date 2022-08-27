//
//  TimeStrategyXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyNintendoView: View {
    var TimeStrategyNintendo: TimeStrategyNintendo
    
    var body: some View {
        HStack{
            VStack{
                Text(TimeStrategyNintendo.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(TimeStrategyNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct TimeStrategyNintendoView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyNintendoView(TimeStrategyNintendo: TimeStrategyNintendoData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
