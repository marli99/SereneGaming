//
//  OnboardingsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct OnboardingView: View {
//    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    

    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
                TabView{
                    OnboardingCardView(image: "dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79", title: "Welcome to Serene Gaming", description: "Serene Gaming is an online Informational Database for the most popular Gaming Consoles and Games")
                    
                    OnboardingCardView(image: "photo-1597773150796-e5c14ebecbf5", title: "How it works", description: "Serene Gaming is the best because it is so easy to use. You simply choose the console you wish to know more about and all the various console types will display with the relevant information.")
                    
                    OnboardingCardView(image: "360_F_471002062_tCBbTqeeMhHgMfCW86mQhdgpETooy3ID", title: "How it works", description: "This application also displays location option for the user that wil show them the location where they can buy the product!")
                }
                .tabViewStyle(PageTabViewStyle())
                .ignoresSafeArea(.all)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View{
        OnboardingView()
            .previewDevice("iPhone 12")
           
    }
}
