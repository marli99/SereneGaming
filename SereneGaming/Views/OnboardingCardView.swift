//
//  OnboardingCardsView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct OnboardingCardView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    
    
    var image: String
    var title: String
    var description: String
    
    
    var body: some View {
            ZStack{
                Image(image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack{
                Text(title)
                    .foregroundColor(.white)
                    
                Text(description)
                    .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        .foregroundColor(.white)
                    .multilineTextAlignment(.center)
    
                    
                    Button(action: {
                        isOnboarding = false
                    }, label: {
                        HStack{
                        Text("SKIP")

                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                        }

                            .padding(.vertical,10)
                            .padding(.horizontal,16)
                            .background(Capsule()
                                            .strokeBorder(Color.white, lineWidth: 1.35))
                            .accentColor(.white)
                    })
//                    NavigationLink(
//                        destination: ContentView(),
//                        label: {
//                            Text("Skip")
//                            Image(systemName: "arrowtriangle.forward.fill")
//                                .resizable()
//                                .imageScale(.large)
//                                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        })
//                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        .border(Color.white, width: 2)
//                        .font(.callout)
//                        .cornerRadius(25)
//                        .foregroundColor(.white)
//                }
            }
            .ignoresSafeArea()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
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
