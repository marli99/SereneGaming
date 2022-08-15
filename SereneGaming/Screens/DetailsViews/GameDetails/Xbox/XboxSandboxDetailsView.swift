//
//  XboxSandboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct XboxSandboxDetailsView: View {
    var sandboXbox: SandboXbox
    
    
    var body: some View{
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sandboXbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sandboXbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sandboXbox.price)
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                    }
                }
                Text(sandboXbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.system(size: 17))
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct XboxSandboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        XboxSandboxDetailsView(sandboXbox: SandboxXboxData[0])
            .previewDevice("iPhone 12")
    }
}
