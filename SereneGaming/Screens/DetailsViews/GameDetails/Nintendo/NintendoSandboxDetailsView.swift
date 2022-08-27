//
//  XboxSandboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct NintendoSandboxDetailsView: View {
    var sandboxNintendo: SandboxNintendo
    
    
    var body: some View{
        ZStack(alignment:.center){
            VStack(alignment:.center){
                Image(sandboxNintendo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 400, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(sandboxNintendo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(sandboxNintendo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                Text(sandboxNintendo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.callout)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct NintendoSandboxDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NintendoSandboxDetailsView(sandboxNintendo: SandboxNintendoData[0])
            .previewDevice("iPhone 12")
    }
}
