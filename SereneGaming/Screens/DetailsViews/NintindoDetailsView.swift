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
            VStack(alignment:.center){
                Image(Nintindo.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text(Nintindo.name)
                            .foregroundColor(.black)
                            .font(.title)
                            .padding(.leading, 20)
                        Text(Nintindo.date)
                            .foregroundColor(.black)
                            .font(.subheadline)
                            .padding(.leading, 20)
                        Text(Nintindo.price)
                            .foregroundColor(.black)
                            .font(.headline)
                            .padding(.leading, 20)
                    }
                }
                
                VStack(alignment:.leading) {
                    Text(Nintindo.description)
                        .foregroundColor(.black
                        )
                        .padding(30)
                        .font(.callout)
                    
                    Text(Nintindo.descriptionTwo)
                        .foregroundColor(.black
                        )
                        .padding(30)
                        .padding(.top,-55)
                        .font(.callout)
                    
                    Text(Nintindo.descriptionThree)
                        .foregroundColor(.black
                        )
                        .padding(30)
                        .padding(.top,-55)
                        .font(.callout)
                }
                
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
