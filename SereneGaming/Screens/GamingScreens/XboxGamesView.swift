//
//  GamesView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/13.
//

import SwiftUI

struct XboxGamesView: View {
    var body: some View {
        ScrollView{
            ZStack{
                Image("dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                    
                VStack{
                        Text("Explore Games")
                            .bold()
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 26))
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .padding(.bottom, 45)
                            .padding(.top, 55)
                           
                        
                        
                        HStack(spacing:-40){
                            VStack{
                                NavigationLink(
                                    destination: XboxListView(),
                                    label: {
                                        Image("PS4-CaseSandbox")
                                            .resizable()
                                            .frame(width: 252.0, height: 192.0)
                                        
                                    })
                                    Text("Sandbox")
                                        .foregroundColor(.white)
                            }
                            
                            VStack{
                            Image("PS4-CaseStrategy")
                                .resizable()
                                .frame(width: 252.0, height: 192.0)
                            NavigationLink(
                            
                                destination: PlaystationListView(),
                                label: {
                                    Text("Real time strategy")
                                        .foregroundColor(.white)
                                })
                            }
                        }
                        
                        HStack(spacing:-40){
                            VStack{
                                NavigationLink(
                                    destination: WiiListView(),
                                    label: {
                                        Image("PS4-CaseShooters")
                                            .resizable()
                                            .frame(width: 252.0, height: 192.0)
                                    })
                                Text("Shooters")
                                    .foregroundColor(.white)
                            }
                            
                            VStack{
                                NavigationLink(
                                    destination: NintindoListView(),
                                    label: {
                                        Image("PS4-CaseMoba")
                                            .resizable()
                                            .frame(width: 252.0, height: 192.0)
                                    })
                                Text("Multiplayer online")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                        HStack(spacing:-40){
                            VStack{
                                Image("PS4-CaseRPG")
                                    .resizable()
                                    .frame(width:252.0, height: 192.0)
                                Text("Role-playing")
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Image("PS4-CaseSport")
                                    .resizable()
                                    .frame(width: 252.0, height: 192.0)
                                Text("Simulation and sports")
                                    .foregroundColor(.white)
                            }
                    }
                        .padding(.bottom, 25)
                        
                        HStack(spacing:-40){
                            VStack{
                                Image("PS4-CasePuzzle")
                                    .resizable()
                                    .frame(width:  252.0, height: 192.0)
                                Text("Puzzle & Party Games")
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Image("PS4-CaseAdventure")
                                    .resizable()
                                    .frame(width: 252.0, height: 192.0)
                                Text("Action-adventure")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.bottom, 35)
                        
                        HStack(spacing:-40){
                            VStack{
                                Image("PS4-CaseSurvival")
                                    .resizable()
                                    .frame(width: 252.0, height: 192.0)
                                Text("Survival and horror")
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Image("PS4-CasePlatformer")
                                    .resizable()
                                    .frame(width: 252.0, height: 192.0)
                                Text("Platform")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.bottom, 95)
                        
                    }
                }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        XboxGamesView()
    }
}
