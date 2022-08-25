//
//  XboxListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/02.
//

import SwiftUI

struct XboxListView: View {
    
    @StateObject var xboxViewModel: XboxViewModel = XboxViewModel()
    
    @State private var isShowingSettings = false
    @State private var showMenu: Bool = false
    
    var body: some View {
            NavigationView{
                ZStack{
                    VStack{
                        NavigationLink(
                        
                            destination: XboxGamesListView(),
                            label: {
                                Text("Explore GAMES")
                                    .foregroundColor(.white)
                                    .padding(.top,30)
                                    .padding(.bottom,30)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 100, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(.black))
                            })
                        List{
                            ForEach(xboxViewModel.XboxData.shuffled()){
                                item in
                                NavigationLink(
                                    destination: XboxDetailsView(xbox: item),
                                    label: {
                                        XboxView(xbox: item)
                                        
                                    })
                                    .listRowBackground(Image("download")
                                                        .resizable()
                                                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                                        .opacity(0.8))
        //                            .listRowBackground(Color.black)
                            }
                            
                        }
                        .listStyle(PlainListStyle())
//                        .navigationBarTitle("Xbox")
                        .navigationBarTitle(Text("Xbox"))
                        .navigationBarTitleDisplayMode(.inline)
                        
                        
//                        .navigationBarItems(trailing: Button(action: {
//                            print("settings clicked")
//                                isShowingSettings = true
//                        }){
//                                Image(systemName: "gear")
//                                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
//                                    .resizable()
//                                    .frame(width: 30, height: 30)
//                                    .accentColor(.black)
//
//                        }
//                        .sheet(isPresented: $isShowingSettings){
//                            SettingsScreenFinal()
//                        })
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
            .navigationBarHidden(true)
            .accentColor(.black)

    }
    
}

struct XboxListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
           XboxListView()
                .previewDevice("iPhone 12")
        }
    }
}
