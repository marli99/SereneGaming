//
//  SandboXboxListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct XboxGamesListView: View {
    
    @StateObject var sportXboxViewModel: SportXboxViewModel = SportXboxViewModel()
    @StateObject var rolePlayingXboxViewModel: RolePlayingXboxViewModel = RolePlayingXboxViewModel()
    @StateObject var multiXboxViewModel: MultiXboxViewModel = MultiXboxViewModel()
    @StateObject var shooterXboxViewModel: ShooterXboxViewModel = ShooterXboxViewModel()
    @StateObject var sandboXboxViewModel: SandboXboxViewModel = SandboXboxViewModel()
    @StateObject var timeStrategyXboxViewModel: TimeStrategyXboxViewModel = TimeStrategyXboxViewModel()
    
    @State private var isShowingSettings = false
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    ScrollView{
                    VStack(alignment:.leading, spacing:0){
//                        Text("Sandbox Games")
//                            .bold()
//                            .padding(.leading,30)
//
//                        ScrollView(.horizontal,showsIndicators: false) {
//                            HStack(spacing:20){
//                                ForEach(sandboXboxViewModel.SandboxXboxData.shuffled()){
//                                        item in
//                                    NavigationLink(
//                                        destination: XboxSandboxDetailsView(sandboXbox: item),
//                                        label: {
//                                            XboxSandboxView(SandboXbox: item)
//
//                                        })
//                                    }
//                                }
//                            .padding(.bottom,30)
//                            .padding(.leading,30)
//                            }
                        
                            Text("Real time strategy Games")
                                .bold()
                                .padding(.leading,30)
                                .padding(.top,20)
                        
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(spacing:-25){
                                    ForEach(timeStrategyXboxViewModel.TimeStrategyXboxData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: TimeStrategyXboxDetailsView(timeStrategyXbox: item),
                                            label: {
                                                TimeStrategyXboxView(TimeStrategyXbox: item)
                                                    
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
                                ForEach(shooterXboxViewModel.ShooterXboxData.shuffled()){
                                    item in
                                    NavigationLink(
                                    
                                        destination: ShooterXboxDetailsView(shooterXbox: item),
                                        label: {
                                            ShooterXboxView(
                                            ShooterXbox: item)
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
                                ForEach(multiXboxViewModel.MultiplayerXboxData.shuffled()){
                                        item in
                                    NavigationLink(
                                        destination: MultiplayerXboxDetailsView(multiXbox: item),
                                        label: {
                                            MultiplayerXboxView(MultiXbox: item)

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
                                ForEach(rolePlayingXboxViewModel.RolePlayingXboxData.shuffled()){
                                        item in
                                    NavigationLink(
                                        destination: RolePlayingXboxDetailsView(rolePlayXbox: item),
                                        label: {
                                            RolePlayingXboxView(RolePlayXbox: item)

                                        })
                                    }
                                .padding(.leading,40)
                                }
                            }
                        
                    
                        .listStyle(PlainListStyle())
                        .navigationBarItems(trailing: Button(action: {
                            print("settings clicked")
                                isShowingSettings = true
                        }){
                            Text("Explore Xbox Games")
                                .foregroundColor(.black)
                                .padding(.trailing,00)
                            
                                Image(systemName: "gear")
                                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .accentColor(.black)
                        }
                        .sheet(isPresented: $isShowingSettings){
                            SettingsScreenFinal()
                        })
                
                    }
                        ScrollView{
                            VStack{
                                Text("Sport and Simulation Games")
                                    .bold()
                                    .padding(.leading,30)
                                    .padding(.top,20)

                                ScrollView(.horizontal,showsIndicators: false) {
                                    HStack(spacing:20){
                                        ForEach(sportXboxViewModel.SportXboxData.shuffled()){
                                                item in
                                            NavigationLink(
                                                destination: SportXboxDetailsView(sportSimXbox: item),
                                                label: {
                                                    SportXboxView(SportSimXbox: item)

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

struct XboxGamesListView_Previews: PreviewProvider {
    static var previews: some View {
        XboxGamesListView()
    }
}
