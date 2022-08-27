//
//  SandboXboxListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct PlaystationGamesListView: View {
    
    @StateObject var sportPlaystationViewModel: SportPlaystationViewModel = SportPlaystationViewModel()
    @StateObject var rPGPlaystationViewModel: RPGPlaystationViewModel = RPGPlaystationViewModel()
    @StateObject var rolePlayingPlaystationViewModel: RolePlayingPlaystationViewModel = RolePlayingPlaystationViewModel()
    @StateObject var multiPlaystationViewModel: MultiPlaystationViewModel = MultiPlaystationViewModel()
    @StateObject var shooterPlaystationViewModel: ShooterPlaystationViewModel = ShooterPlaystationViewModel()
    @StateObject var sandboxPlaystationViewModel: SandboxPlaystationViewModel = SandboxPlaystationViewModel()
    @StateObject var timeStrategyPlaystationViewModel: TimeStrategyPlaystationViewModel = TimeStrategyPlaystationViewModel()

    @State private var isShowingSettings = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment:.leading, spacing:0){
                    ScrollView{
                        VStack(alignment:.leading, spacing:0){
                            Text("Sandbox Games")
                                .bold()
                                .padding(.leading,30)
                                .padding(.top, 20)
    
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack(spacing:20){
                                    ForEach(sandboxPlaystationViewModel.SandboxPlaystationData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: PlaystationSandboxDetailsView(sandboXPlaystation: item),
                                            label: {
                                                SandboxPlaystationView(SandboXPlaystation: item)
    
                                            })
                                        }
                                    }
                                .padding(.bottom,30)
                                .padding(.leading,30)
                                }
                            
                                Text("Real time strategy Games")
                                    .bold()
                                    .padding(.leading,30)
                                    .padding(.top,20)
                            
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack(spacing:-25){
                                        ForEach(timeStrategyPlaystationViewModel.TimeStrategyPlaystationData.shuffled()){
                                                item in
                                            NavigationLink(
                                                destination: TimeStrategyPlaystationDetailsView(timeStrategyPlaystation: item),
                                                label: {
                                                    TimeStrategyPlaystationView(TimeStrategyPlaystation: item)
                                                        
                                                })
                                            }
                                        .padding(.leading,40)
                                        }
                                    }
                                
                            Text("Shooter Games")
                                .bold()
                                .padding(.leading,30)
                                .padding(.top,40)
                        
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(spacing:-25){
                                    ForEach(shooterPlaystationViewModel.ShooterPlaystationData.shuffled()){
                                        item in
                                        NavigationLink(
                                        
                                            destination: ShooterPlaystationDetailsView(shooterPlaystation: item),
                                            label: {
                                                ShooterPlaystationView(
                                                ShooterPlaystation: item)
                                            })
                                    }
                                    .padding(.leading, 40)
                                }
                            }
                            
                            Text("Multiplayer Online Games")
                                .bold()
                                .padding(.leading,30)
                                .padding(.top,20)

                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(multiPlaystationViewModel.MultiplayerPlaystationData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: MultiplayerPlaystationDetailsView(multiPlaystation: item),
                                            label: {
                                                MultiplayerPlaystationView(MultiPlaystation: item)

                                            })
                                        }
                                    .padding(.leading,40)
                                    }
                                }
                            
                            Text("Role Playing Games")
                                .bold()
                                .padding(.leading,30)
                                .padding(.top,20)

                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(rPGPlaystationViewModel.RPGPlaystationData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: PlaystationRPGDetailsView(rPGPlaystation: item),
                                            label: {
                                                RPGPlaystationView(RPGPlaystation: item)

                                            })
                                        }
                                    .padding(.leading,40)
                                    }
                                }
                            
                        
                            .listStyle(PlainListStyle())
                            .navigationTitle("Explore Playstation Games")
                            .navigationBarTitleDisplayMode(.inline)
    //                        .navigationBarItems(leading: Button(action: {
    //                            print("settings clicked")
    //                                isShowingSettings = true
    //                        }){
    //                            Text("Explore Xbox Games")
    //                                .foregroundColor(.black)
    //                                .padding(.trailing,00)
                                
    //                                Image(systemName: "gear")
    //                                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
    //                                    .resizable()
    //                                    .frame(width: 30, height: 30)
    //                                    .accentColor(.black)
    //                            }
    //                        .sheet(isPresented: $isShowingSettings){
    //                            SettingsScreenFinal()
    //                            )
                    
                        }
                            ScrollView{
                                VStack(alignment:.leading, spacing:0){
                                    Text("Sport and Simulation Games")
                                        .bold()
                                        .padding(.leading,30)
                                        .padding(.top,20)

                                    ScrollView(.horizontal,showsIndicators: false) {
                                        HStack(spacing:20){
                                            ForEach(sportPlaystationViewModel.SportPlaystationData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: SportPlaystationDetailsView(sportSimPlaystation: item),
                                                    label: {
                                                        SportPlaystationView(SportSimPlaystation: item)

                                                    })
                                                }
                                            .padding(.leading,40)
                                            }
                                        }
                                    
                                    Text("Puzzle & Party Games")
                                        .bold()
                                        .padding(.leading,30)
                                        .padding(.top,20)
                                   
                                    ScrollView(.horizontal,showsIndicators: false) {
                                        HStack(spacing:20){
                                            ForEach(rolePlayingPlaystationViewModel.RolePlayingPlaystationData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: RolePlayingPlaystationDetailsView(rolePlayPlaystation: item),
                                                    label: {
                                                        PuzzlePlaystationView(RolePlayPlaystation: item)

                                                    })
                                                }
                                            .padding(.leading,40)
                                            }
                                        }
                                    

                                }
                            }
                    }
                    
                }
            }
            
        }
        .accentColor(.black)
    }
}

struct PlaystatioGamesListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaystationGamesListView()
    }
}
