//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterPlaystationDetailsView: View {
    var shooterPlaystation: ShooterPlaystation
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(shooterPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(shooterPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(shooterPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(shooterPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct ShooterPlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterPlaystationDetailsView(shooterPlaystation: ShooterPlaystationData[0])
    }
}
