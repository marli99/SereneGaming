//
//  XboxRPGDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct PlaystationRPGDetailsView: View {
    var rPGPlaystation: RPGPlaystation
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(rPGPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(rPGPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(rPGPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(rPGPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct PlaystationRPGDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaystationRPGDetailsView(rPGPlaystation: RPGPlaystationData[0])
    }
}
