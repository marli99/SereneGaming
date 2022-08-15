//
//  XboxDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct XboxDetailsView: View {
    var xbox: Xbox
    
    
    var body: some View{
        ZStack{
            VStack{
                Image(xbox.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(xbox.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(xbox.date)
                            .foregroundColor(.black)
                            .font(.title3)
                        Text(xbox.price)
                            .foregroundColor(.black)
                            .font(.title3)
                    }
                }
                Text(xbox.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.title3)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct XboxDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        XboxDetailsView(xbox: XboxData[0])
            .previewDevice("iPhone 12")
           
    }
}
