//
//  XboxRPGDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct XboxRPGDetailsView: View {
    var rPGXbox: RPGXbox
    
    var body: some View {
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(rPGXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(rPGXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(rPGXbox.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(rPGXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct XboxRPGDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        XboxRPGDetailsView(rPGXbox: RPGXboxData[0])
    }
}
