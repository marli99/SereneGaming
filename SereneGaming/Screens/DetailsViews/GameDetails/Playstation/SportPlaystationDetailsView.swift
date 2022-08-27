//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportPlaystationDetailsView: View {
    var sportSimPlaystation: SportSimPlaystation
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sportSimPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sportSimPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sportSimPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sportSimPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct SportPlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SportPlaystationDetailsView(sportSimPlaystation: SportPlaystationData[0])
    }
}
