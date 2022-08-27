//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ShooterXboxDetailsView: View {
    var shooterXbox: ShooterXbox
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(shooterXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(shooterXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(shooterXbox.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(shooterXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct ShooterXboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ShooterXboxDetailsView(shooterXbox: ShooterXboxData[0])
    }
}
