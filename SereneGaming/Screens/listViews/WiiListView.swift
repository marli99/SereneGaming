//
//  WiiListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

struct WiiListView: View {
    
    @StateObject var WIIViewModel: WiiViewModel = WiiViewModel()
    
    @State private var isShowingSettings = false
    @State private var showMenu: Bool = false
    
    var body: some View {
            NavigationView{
                ZStack {
                    VStack {
                        NavigationLink(
                        
                            destination: PlaystationGamesListView(),
                            label: {
                                Text("Explore GAMES")
                                    .foregroundColor(.white)
                                    .padding(.top,30)
                                    .padding(.bottom,30)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 100, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(.black))
                            })
                        List{
                            ForEach(WIIViewModel.WiiData.shuffled()){
                                item in
                                NavigationLink(
                                    destination: WiiDetailsView(WII: item),
                                    label: {
                                        WiiView(WII: item)
                                        
                                    })
                                    .listRowBackground(Image("43h45f50mna71")
                                                .resizable()
                                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                                .opacity(0.8))
        //                            .listRowBackground(Color.black)
                            }
                        }
                        
                        
                        .listStyle(PlainListStyle())
                        .navigationTitle("Wii")
                        .navigationBarTitleDisplayMode(.inline)
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
//                .navigationBarItems(trailing: Button(action: {
//                    print("settings clicked")
//                        isShowingSettings = true
//                }){
//                        Image(systemName: "gear")
//                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
//                            .resizable()
//                            .frame(width: 30, height: 30)
//                            .accentColor(.black)
//
//                }
//
//                .sheet(isPresented: $isShowingSettings){
//                    SettingsScreenFinal()
//                })
            }
            .accentColor(.black)
    }
    
    
}

struct WiiListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            WiiListView()
                .previewDevice("iPhone 12")
        }
    }
}
