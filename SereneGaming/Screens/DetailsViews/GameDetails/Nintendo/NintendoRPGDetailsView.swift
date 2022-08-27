//
//  XboxRPGDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct NintendoRPGDetailsView: View {
    var RPGNintendo: RPGNintendo
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(RPGNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(RPGNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(RPGNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(RPGNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct NintendoRPGDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NintendoRPGDetailsView(RPGNintendo: RPGNintendoData[0])
    }
}
