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
            ScrollView{
                VStack(alignment: .center){
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
                                .font(.subheadline)
                            Text(xbox.price)
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(xbox.description)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,0)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.descriptionTwo)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-50)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.SpesificationsTitle)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-30)
                            .padding(.bottom,0)
                            .font(.headline)
                        
                        Text(xbox.bulletpoint)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-50)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointTwo)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointThree)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointFour)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointFive)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointSix)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                        
                        Text(xbox.bulletpointSeven)
                            .foregroundColor(.black)
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.bottom,0)
                            .font(.callout)
                    }
                    
                    
                    
    //                SubmitButtonView()
                }
            
            
           
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
