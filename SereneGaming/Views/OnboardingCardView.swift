//
//  OnboardingCardsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct OnboardingCardView: View {
    
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        
        ZStack{
            Image(image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 845, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
            Text(title)
                .foregroundColor(.white)
                
                .padding()
                
            Text(description)
                .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                
                StartButtonView()
            }
        }.ignoresSafeArea()
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
            
            OnboardingCardView(image: "dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79", title: "Welcome to Serene Gaming", description: "Serene Gaming is a mobile library application, for all  Gaming enthousiests")
                .previewLayout(.fixed(width: 320, height: 640))
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
