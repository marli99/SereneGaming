//
//  TimeStrategyXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyXboxView: View {
    var TimeStrategyXbox: TimeStrategyXbox
    
    var body: some View {
        HStack{
            VStack{
                Text(TimeStrategyXbox.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(TimeStrategyXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct TimeStrategyXboxView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyXboxView(TimeStrategyXbox: TimeStrategyXboxData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
