//
//  WiiDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct WiiDetailsView: View{
    var WII : Wii
    
    var body: some View {
        ZStack{
            VStack{
                Image(WII.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(WII.name)
                            .foregroundColor(.white)
                            .font(.title)
                        Text(WII.date)
                            .foregroundColor(.white)
                            .font(.title3)
                        Text(WII.price)
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                }
                Text(WII.description)
                    .foregroundColor(.white
                    )
                    .padding(30)
                    .font(.title3)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct WiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WiiDetailsView(WII: WiiData[0])
            .previewDevice("iPhone 12")

    }
}
