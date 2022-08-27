//
//  TimeStrategyXboxDetailsVieww.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyNintendoDetailsView: View {
    var timeStrategyNintendo: TimeStrategyNintendo
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(timeStrategyNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(timeStrategyNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(timeStrategyNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(timeStrategyNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct TimeStrategyNintendoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyNintendoDetailsView(timeStrategyNintendo: TimeStrategyNintendoData[0])
    }
}
