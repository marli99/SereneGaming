//
//  TimeStrategyXboxDetailsVieww.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct TimeStrategyWiiDetailsView: View {
    var timeStrategyWii: TimeStrategyWii
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(timeStrategyWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(timeStrategyWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(timeStrategyWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(timeStrategyWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct TimeStrategyWiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeStrategyWiiDetailsView(timeStrategyWii: TimeStrategyWiiData[0])
    }
}
