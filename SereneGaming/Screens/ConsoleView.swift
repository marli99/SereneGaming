//
//  ConsoleView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct ConsoleView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .center, spacing:30){
                        
                        Text("Choose Gaming Platform:")
                            .foregroundColor(.white)
                        
                        VStack(spacing:30){
                            VStack(alignment: .center, spacing:10){
                                NavigationLink(
                                    destination: XboxGamesView(),
                                    label: {
                                        Image("clipart610203")
                                            .resizable()
                                            .frame(width: 132.0, height: 132.0)
                                    })
                                Text("XBOX")
                                    .foregroundColor(.white)
                            }
                            
                            VStack(alignment: .center, spacing:10){
                                NavigationLink(
                                    destination: XboxListView(),
                                    label: {
                                        Image("playstationLogo")
                                            .resizable()
                                            .frame(width: 132.0, height: 132.0)
                                    })
                                Text("PLAYSTATION")
                                    .foregroundColor(.white)
                            }
                            
                            VStack(alignment: .center, spacing:10){
                                NavigationLink(
                                    destination: XboxListView(),
                                    label: {
                                        Image("wiiLogo")
                                            .resizable()
                                            .frame(width: 132.0, height: 132.0)
                                    })
                                Text("WII")
                                    .foregroundColor(.white)
                            }
                            
                            VStack(alignment: .center, spacing:10){
                                NavigationLink(
                                    destination: XboxListView(),
                                    label: {
                                        Image("nintindoLogo")
                                            .resizable()
                                            .frame(width: 132.0, height: 132.0)
                                    })
                                Text("WII")
                                    .foregroundColor(.white)
                            }
                        }
                    }
            }
    
        }
    }
}

struct ConsoleView_Previews: PreviewProvider {
    static var previews: some View {
        ConsoleView()
    }
}
