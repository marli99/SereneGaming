//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerPlaystationDetailsView: View {
    var multiPlaystation: MultiPlaystation
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(multiPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    HStack(spacing: 200){
                        Text(multiPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        
                        Text(multiPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(multiPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct MultiplayerPlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerPlaystationDetailsView(multiPlaystation: MultiplayerPlaystationData[0])
    }
}
