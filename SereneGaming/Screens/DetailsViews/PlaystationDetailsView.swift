//
//  PlaystationDetailsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct PlaystationDetailsView: View {
    var playstation: Playstation
    
    
    var body: some View{
        ZStack{
            ScrollView{
                VStack(alignment: .center){
                    Image(playstation.Image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200, alignment: .leading)
    //                    .background(Color.blue)
                        .cornerRadius(8)

                    
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(playstation.name)
                                .foregroundColor(.black)
                                .font(.title)
                                .padding(.leading, 30)
                                .padding(.trailing, 30)
                            Text(playstation.date)
                                .foregroundColor(.black)
                                .font(.subheadline)
                                .padding(.leading, 30)
                            Text(playstation.price)
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding(.leading, 30)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text(playstation.description)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .font(.callout)
                        
                        Text(playstation.descriptionTwo)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.descriptionThree)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                    }
                    
                    VStack(alignment:.leading){
                        Text(playstation.SpesificationsTitle)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.headline)
                        
                        Text(playstation.bulletpoint)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointTwo)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointThree)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointFour)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointFive)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointSix)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointSeven)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointEight)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                        Text(playstation.bulletpointNine)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .font(.callout)
                        
                    }
                    
                    VStack(alignment:.leading){
                        Text(playstation.bulletpointTen)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.leading, -19)
                            .font(.callout)
                        
                        Text(playstation.bulletpointEleven)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.leading, -19)
                            .font(.callout)
                        
                        Text(playstation.bulletpointTwelve)
                            .foregroundColor(.black
                            )
                            .padding(30)
                            .padding(.top,-55)
                            .padding(.leading, -18)
                            .font(.callout)
                    }
                    
    //                SubmitButtonView()
                }
            }
            
            
           
            
        }
        
    }
}

struct PlaystationDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        PlaystationDetailsView(playstation: PlaystationData[0])
            .previewDevice("iPhone 12")
           
    }
}

