//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerWiiDetailsView: View {
    var multiWii: MultiWii
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(multiWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(multiWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(multiWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(multiWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct MultiplayerWiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerWiiDetailsView(multiWii: MultiplayerWiiData[0])
    }
}
