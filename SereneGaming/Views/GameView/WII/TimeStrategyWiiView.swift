//
//  TimeStrategyXboxView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyWiiView: View {
    var TimeStrategyWii: TimeStrategyWii
    
    var body: some View {
        HStack{
            VStack{
                Text(TimeStrategyWii.name)
                    .font(.system(size: 13, weight:.regular))
                    .foregroundColor(.black)
                    .hoverEffect(.automatic)
                    .padding(.top, 20)
                             
                Image(TimeStrategyWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    
                    .frame(width: 145, height: 200, alignment: .leading)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom,10)
    }
}

struct TimeStrategyWiiView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyWiiView(TimeStrategyWii: TimeStrategyWiiData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
