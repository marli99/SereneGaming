//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterNintendoDetailsView: View {
    var shooterNintendo: ShooterNintendo
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(shooterNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(shooterNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(shooterNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(shooterNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct ShooterNintendoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterNintendoDetailsView(shooterNintendo: ShooterNintendoData[0])
    }
}
