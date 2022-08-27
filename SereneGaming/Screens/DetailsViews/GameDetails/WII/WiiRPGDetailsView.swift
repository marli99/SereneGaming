//
//  XboxRPGDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct WiiRPGDetailsView: View {
    var rPGWii: RPGWii
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(rPGWii.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(rPGWii.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(rPGWii.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(rPGWii.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct WiiRPGDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WiiRPGDetailsView(rPGWii: RPGPWiiData[0])
    }
}
