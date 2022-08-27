//
//  TimeStrategyXboxDetailsVieww.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyPlaystationDetailsView: View {
    var timeStrategyPlaystation: TimeStrategyPlaystation
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(timeStrategyPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(timeStrategyPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(timeStrategyPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(timeStrategyPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct TimeStrategyPlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyPlaystationDetailsView(timeStrategyPlaystation: TimeStrategyPlaystationData[0])
    }
}
