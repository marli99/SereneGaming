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
    @StateObject var rpgXboxViewModel: RPGXboxViewModel = RPGXboxViewModel()
    @StateObject var multiXboxViewModel: MultiXboxViewModel = MultiXboxViewModel()
    @StateObject var shooterXboxViewModel: ShooterXboxViewModel = ShooterXboxViewModel()
    @StateObject var sandboXboxViewModel: SandboXboxViewModel = SandboXboxViewModel()
    @StateObject var timeStrategyXboxViewModel: TimeStrategyXboxViewModel = TimeStrategyXboxViewModel()
    
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
                                    ForEach(sandboXboxViewModel.SandboxXboxData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: XboxSandboxDetailsView(sandboXbox: item),
                                            label: {
                                                XboxSandboxView(SandboXbox: item)
    
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
                                    ForEach(rpgXboxViewModel.RPGXboxData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: XboxRPGDetailsView(rPGXbox: item),
                                            label: {
                                                RPGXboxView(RPGXbox: item)

                                            })
                                        }
                                    .padding(.leading,40)
                                    }
                                }
                            
                        
                            .listStyle(PlainListStyle())
                            .navigationTitle("Explore Xbox Games")
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
                                    
                                    Text("Puzzle & Party Games")
                                        .bold()
                                        .padding(.leading,30)
                                        .padding(.top,20)
                                   
                                    ScrollView(.horizontal,showsIndicators: false) {
                                        HStack(spacing:20){
                                            ForEach(rolePlayingXboxViewModel.RolePlayingXboxData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: RolePlayingXboxDetailsView(rolePlayXbox: item),
                                                    label: {
                                                        PuzzleXboxView(RolePlayXbox: item)

                                                    })
                                                }
                                            .padding(.leading,40)
                                            }
                                        }
                                    

                                }
                                
                            }
                        
                    }
                    
                    
                }
                GeometryReader{ _ in
                    
                    HStack {
                        Spacer()
                        SideMenuView()
                            .ignoresSafeArea()
                            .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
//                                .offset(x: UIScreen.main.bounds.width)
                    }
                }
                .toolbar(content: {
                    Button{
                        self.showMenu.toggle()
                        } label:{
                            Image(systemName: "text.justify")
                                .resizable()
                                .imageScale(.large)
                                
                        }
                })
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
