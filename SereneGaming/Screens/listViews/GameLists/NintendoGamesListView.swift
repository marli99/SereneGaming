//
//  SandboXboxListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

struct NintendoGamesListView: View {
    
    @StateObject var sportNintendoViewModel: SportNintendoViewModel = SportNintendoViewModel()
    @StateObject var puzzleNintendoViewModel: PuzzleNintendoViewModel = PuzzleNintendoViewModel()
    @StateObject var rPGNintendoViewModel: RPGNintendoViewModel = RPGNintendoViewModel()
    @StateObject var multiplayerNintendoViewModel: MultiplayerNintendoViewModel = MultiplayerNintendoViewModel()
    @StateObject var shooterNintendoViewModel: ShooterNintendoViewModel = ShooterNintendoViewModel()
    @StateObject var sandboxNintendoViewModel: SandboxNintendoViewModel = SandboxNintendoViewModel()
    @StateObject var timeStrategyNintendoViewModel: TimeStrategyNintendoViewModel = TimeStrategyNintendoViewModel()
    
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
                                    ForEach(sandboxNintendoViewModel.SandboxNintendoData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: NintendoSandboxDetailsView(sandboxNintendo: item),
                                            label: {
                                                SandboxNintendoView(SandboxNintendo: item)
    
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
                                        ForEach(timeStrategyNintendoViewModel.TimeStrategyNintendoData.shuffled()){
                                                item in
                                            NavigationLink(
                                                destination: TimeStrategyNintendoDetailsView(timeStrategyNintendo: item),
                                                label: {
                                                    TimeStrategyNintendoView(TimeStrategyNintendo: item)

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
                                    ForEach(shooterNintendoViewModel.ShooterNintendoData.shuffled()){
                                        item in
                                        NavigationLink(

                                            destination: ShooterNintendoDetailsView(shooterNintendo: item),
                                            label: {
                                                ShooterNintendoView(
                                                ShooterNintendo: item)
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
                                    ForEach(multiplayerNintendoViewModel.MultiplayerNintendoData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: MultiplayerNintendoDetailsView(multiNintendo: item),
                                            label: {
                                                MultiplayerNintendoView(MultiNintendo: item)

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
                                    ForEach(rPGNintendoViewModel.RPGNintendoData.shuffled()){
                                            item in
                                        NavigationLink(
                                            destination: NintendoRPGDetailsView(RPGNintendo: item),
                                            label: {
                                                RPGNintendoView(RPGNintendo: item)

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
                                            ForEach(sportNintendoViewModel.SportNintendoiData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: SportNintendoDetailsView(sportNintendo: item),
                                                    label: {
                                                        SportNintendoView(SportNintendo: item)

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
                                            ForEach(puzzleNintendoViewModel.PuzzleNintendoData.shuffled()){
                                                    item in
                                                NavigationLink(
                                                    destination: PuzzleNintendoDetailsView(puzzleNintendo: item),
                                                    label: {
                                                        PuzzleNintendoView(PuzzleNintendo: item)

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

struct NintendoGamesListView_Previews: PreviewProvider {
    static var previews: some View {
        NintendoGamesListView()
    }
}
