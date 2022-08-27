//
//  SandboXboxListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct WiiGamesListView: View {
    
    @StateObject var sandboWIIViewModel: SandboWIIViewModel = SandboWIIViewModel()
    @StateObject var timeStrategyWiiViewModel: TimeStrategyWiiViewModel = TimeStrategyWiiViewModel()
    @StateObject var shooterXWiiViewModel: ShooterWiiViewModel = ShooterWiiViewModel()
    @StateObject var multiplayerWiiViewModel: MultiplayerWiiViewModel = MultiplayerWiiViewModel()
    @StateObject var rpgWiiViewModel: RPGWiiViewModel = RPGWiiViewModel()
    @StateObject var sportWiiViewModel: SportWiiViewModel = SportWiiViewModel()
    @StateObject var puzzleWiiViewModel: PuzzleWiiViewModel = PuzzleWiiViewModel()
    
    @State private var showMenu: Bool = false
    
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
                                    ForEach(sandboWIIViewModel.SandboxWIIData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: WiiSandboxDetailsView(sandboxWII: item),
                                            label: {
                                                SandboxWiiView(SandboxWII: item)
    
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
                                        ForEach(timeStrategyWiiViewModel.TimeStrategyWiiData.shuffled()){
                                                item in
                                            NavigationLink(
                                                destination: TimeStrategyWiiDetailsView(timeStrategyWii: item),
                                                label: {
                                                    TimeStrategyWiiView(TimeStrategyWii: item)
                                                        
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
                                    ForEach(shooterXWiiViewModel.ShooterWiData.shuffled()){
                                        item in
                                        NavigationLink(
                                        
                                            destination: ShooterWiiDetailsView(shooterWii: item),
                                            label: {
                                                ShooterWiiView(
                                                ShooterWii: item)
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
                                    ForEach(multiplayerWiiViewModel.MultiplayerWiiData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: MultiplayerWiiDetailsView(multiWii: item),
                                            label: {
                                                MultiplayerWiiView(MultiWii: item)

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
                                    ForEach(rpgWiiViewModel.RPGWiiData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: WiiRPGDetailsView(rPGWii: item),
                                            label: {
                                                RPGWiiView(RPGWii: item)

                                            })
                                        }
                                    .padding(.leading,40)
                                    }
                                }
                            
                        
                            .listStyle(PlainListStyle())
                            .navigationTitle("Explore Wii Games")
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
                                            ForEach(sportWiiViewModel.SportWiiData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: SportWiiDetailsView(sportWii: item),
                                                    label: {
                                                        SportWiiView(SportWii: item)

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
                                            ForEach(puzzleWiiViewModel.PuzzleWiiData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: PuzzleWiiDetailsView(puzzleWii: item),
                                                    label: {
                                                        PuzzleWiiView(PuzzleWii: item)

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

struct WiiGamesListView_Previews: PreviewProvider {
    static var previews: some View {
        WiiGamesListView()
    }
}
