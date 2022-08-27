//
//  XboxSandboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct PlaystationSandboxDetailsView: View {
    var sandboXPlaystation: SandboXPlaystation
    
    
    var body: some View{
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sandboXPlaystation.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sandboXPlaystation.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sandboXPlaystation.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sandboXPlaystation.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct PlaystationSandboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaystationSandboxDetailsView(sandboXPlaystation: SandboxPlaystationData[0])
            .previewDevice("iPhone 12")
    }
}
