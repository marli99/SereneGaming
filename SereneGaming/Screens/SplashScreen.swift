//
//  SplashScreen.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/10.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opactiy = 0.7
    
    
    var body: some View {
//        if isActive {
//            OnboardingView()
//        }else{
            
            ZStack{
              Image("dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79")
                        .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .center, spacing:30){
                    
                    Text("Welcome")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size:32))
                    
                    Text("TO")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size:25))
                    
                    Image("Untitled-2")
                        .resizable()
                        .frame(width: 232.0, height: 232.0)
                    
                    Text("Serene Gaming")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    
                    
                }
            }
            .opacity(opactiy)
            .onAppear{
                withAnimation(.easeIn(duration: 1.6)){
                    self.opactiy = 1.0
                    
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                    }
                }
        }
        
        
//        }
}
        

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
