//
//  PlaystationDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct PlaystationDetailsView: View {
    var playstation: Playstation
    
    
    var body: some View{
        ZStack{
            VStack{
                Image(playstation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(playstation.name)
                            .foregroundColor(.white)
                            .font(.title)
                        Text(playstation.date)
                            .foregroundColor(.white)
                            .font(.title3)
                        Text(playstation.price)
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                }
                Text(playstation.description)
                    .foregroundColor(.white
                    )
                    .padding(30)
                    .font(.title3)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct PlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        PlaystationDetailsView(playstation: PlaystationData[0])
            .previewDevice("iPhone 12")
           
    }
}

