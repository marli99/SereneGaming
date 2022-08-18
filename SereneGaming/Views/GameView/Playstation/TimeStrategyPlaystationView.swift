//
//  TimeStrategyXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyPlaystationView: View {
    var TimeStrategyPlaystation: TimeStrategyPlaystation
    
    var body: some View {
        HStack{
            VStack{
                Text(TimeStrategyPlaystation.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(TimeStrategyPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct TimeStrategyPlaystationView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyPlaystationView(TimeStrategyPlaystation: TimeStrategyPlaystationData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
