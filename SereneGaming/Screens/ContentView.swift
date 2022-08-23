//
//  ContentView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
            NavigationView{
                ZStack{
                    Image("dark-diamond-tunnel-4k-mobile-wallpaper-616393588636n9a8qqu79")
                        .resizable()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        VStack(alignment: .center, spacing:30){
                            Image("Untitled-2")
                                .resizable()
                                .frame(width: 132.0, height: 132.0)
                            
                            Text("About Serene Gaming:")
                                .bold()
                                .foregroundColor(.white)
                            
                            Text("Serene Gaming is the new Best Library application designed spesific for all gamers to get only the latest and most accurate information")
                                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding(.leading, 40)
                                .padding(.trailing, 40)
                            
                            VStack(spacing:30){
                                HStack(spacing:40){
                                    NavigationLink(
                                    
                                        destination: XboxListView(),
                                        label: {
                                            Image("clipart610203")
                                                .resizable()
                                                .frame(width: 132.0, height: 132.0)
                                        })
                                    
                                    Image("playstationLogo")
                                        .resizable()
                                        .frame(width: 132.0, height: 132.0)
                                    NavigationLink(
                                    
                                        destination: PlaystationListView(),
                                        label: {
                                            Text("")
                                        })
                                }
                                
                                HStack(spacing:40){
                                    NavigationLink(

                                        destination: WiiListView(),
                                        label: {
                                            Image("wiiLogo")
                                                .resizable()
                                                .frame(width: 132.0, height: 132.0)
                                        })
                                    
                                    NavigationLink(
                                        destination: NintindoListView(),
                                        label: {
                                            Image("nintindoLogo")
                                                .resizable()
                                                .frame(width: 132.0, height: 132.0)
                                        })
                                    
                                }
                                
                                HStack(spacing:40){
                                    NavigationLink(
                                    
                                        destination: ConsoleView(),
                                        label: {
                                            Image("gamesicon2")
                                                .resizable()
                                                .frame(width: 132.0, height: 132.0)
                                        })
                                    
                                    Image("wishlisticon")
                                        .resizable()
                                        .frame(width: 132.0, height: 132.0)
                                }
                                .padding(.bottom, 5)
                                
                                
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
                        .toolbar{
                            Button{
                                self.showMenu.toggle()
                                } label:{
                                    Image(systemName: "text.justify")
                                        .resizable()
                                        .imageScale(.large)
                                        
                                }
                            
                        }
                        
            }
        
        }
            
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .accentColor(.white)
        
        
     
        
               
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
