//
//  XboxSandboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct WiiSandboxDetailsView: View {
    var sandboxWII: SandboxWII
    
    
    var body: some View{
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sandboxWII.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sandboxWII.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sandboxWII.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sandboxWII.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct WiiSandboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WiiSandboxDetailsView(sandboxWII: SandboxWIIData[0])
            .previewDevice("iPhone 12")
    }
}
