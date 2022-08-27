//
//  TimeStrategyXboxDetailsVieww.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyXboxDetailsView: View {
    var timeStrategyXbox: TimeStrategyXbox
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(timeStrategyXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(timeStrategyXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(timeStrategyXbox.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(timeStrategyXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct TimeStrategyXboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyXboxDetailsView(timeStrategyXbox: TimeStrategyXboxData[0])
    }
}
