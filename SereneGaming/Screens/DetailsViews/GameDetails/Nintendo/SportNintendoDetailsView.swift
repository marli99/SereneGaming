//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportNintendoDetailsView: View {
    var sportNintendo: SportNintendo
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sportNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sportNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sportNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sportNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct SportNintendoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SportNintendoDetailsView(sportNintendo: SportNintendoiData[0])
    }
}
