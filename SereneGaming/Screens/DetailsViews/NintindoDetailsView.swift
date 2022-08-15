//
//  NintindoDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/13.
//

import SwiftUI

struct NintindoDetailsView: View {
    
    var Nintindo : Nin
    
    var body: some View {
        ZStack{
            VStack{
                Image(Nintindo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(Nintindo.name)
                            .foregroundColor(.black)
                            .font(.title)
                        Text(Nintindo.date)
                            .foregroundColor(.black)
                            .font(.title3)
                        Text(Nintindo.price)
                            .foregroundColor(.black)
                            .font(.title3)
                    }
                }
                Text(Nintindo.description)
                    .foregroundColor(.black
                    )
                    .padding(30)
                    .font(.title3)
                
//                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct NintindoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NintindoDetailsView(Nintindo: NintindoData[0])
            .previewDevice("iPhone 12")
    }
}
