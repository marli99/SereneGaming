//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportXboxDetailsView: View {
    var sportSimXbox: SportSimXbox
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sportSimXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sportSimXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sportSimXbox.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sportSimXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct SportXboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SportXboxDetailsView(sportSimXbox: SportXboxData[0])
    }
}
