//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterWiiDetailsView: View {
    var shooterWii: ShooterWii
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(shooterWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(shooterWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(shooterWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(shooterWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct ShooterWiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterWiiDetailsView(shooterWii: ShooterWiData[0])
    }
}
