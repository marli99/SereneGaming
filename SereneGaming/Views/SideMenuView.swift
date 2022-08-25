//
//  SideMenuView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/22.
//

import SwiftUI

struct SideMenuView: View {
    
    var body: some View {
        
        NavigationView {
            VStack(alignment:.leading){
                NavigationLink(
                    destination: ContentView(),
                        label: {
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 30.0, height: 29.0)
                            Text("Home")
                                .padding(.leading, 20)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: XboxListView(),
                        label: {
                            Image(systemName: "xboxlogopng")
                                .resizable()
                                .frame(width: 30.0, height: 29.0)
                            Text("Xbox")
                                .padding(.leading, 20)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: PlaystationListView(),
                        label: {
                            Image("playstationlogo-1")
                                .resizable()
                                .frame(width: 30.0, height: 29.0)
                            Text("Playstation")
                                .padding(.leading, 20)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: NintindoListView(),
                        label: {
                            Image("nintindoLogo")
                                .resizable()
                                .frame(width: 35.0, height: 29.0)
                            Text("Nintendo")
                                .padding(.leading, 10)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: WiiListView(),
                        label: {
                            Image("wiiLogo")
                                .resizable()
                                .frame(width: 30.0, height: 29.0)
                            Text("WII")
                                .padding(.leading, 20)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: ConsoleView(),
                        label: {
                            Image(systemName: "gamecontroller")
                                .resizable()
                                .frame(width: 39.0, height: 29.0)
                            Text("Explore Games")
                                .padding(.leading, 10)
                                
                        })
                    .padding(.bottom,20)
                
                NavigationLink(
                    destination: SettingsScreenFinal(),
                        label: {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 32.0, height: 32.0)
                            Text("Settings")
                                .padding(.leading, 20)
                        })
                
            }
            
            .navigationBarHidden(true)
            .frame(width:500, height: 775, alignment: .topLeading)
            .padding()
            .padding(.top, 120)
            .padding(.leading, 160)
            .background(Color(.black))
            .edgesIgnoringSafeArea(.all)
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        
    }
    
}
    

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
