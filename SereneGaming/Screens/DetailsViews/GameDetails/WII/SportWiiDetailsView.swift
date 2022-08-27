//
//  SportXboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SportWiiDetailsView: View {
    var sportWii: SportWii
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sportWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sportWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sportWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sportWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct SportWiiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SportWiiDetailsView(sportWii: SportWiiData[0])
    }
}
