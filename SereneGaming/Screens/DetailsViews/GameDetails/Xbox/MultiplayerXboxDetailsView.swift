//
//  ShooterXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct MultiplayerXboxDetailsView: View {
    var multiXbox: MultiXbox
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(multiXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(multiXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(multiXbox.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(multiXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct MultiplayerXboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerXboxDetailsView(multiXbox: MultiplayerXboxData[0])
    }
}
