//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerNintendoDetailsView: View {
    var multiNintendo: MultiNintendo
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(multiNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(multiNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(multiNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(multiNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct MultiplayerNintendoDetailsVieww_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerNintendoDetailsView(multiNintendo: MultiplayerNintendoData[0])
    }
}
