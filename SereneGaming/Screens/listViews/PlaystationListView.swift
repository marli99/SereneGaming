//
//  PlaystationListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI
protocol ListStyle{}

struct PlaystationListView: View {
    
    @StateObject var playstationViewModel: PlaystationViewModel = PlaystationViewModel()
    
    @State private var isShowingSettings = false
    
    
    var body: some View {
        
            NavigationView{
                List{
                    ForEach(playstationViewModel.PlaystationData.shuffled()){
                        item in
                        NavigationLink(
                            destination: PlaystationDetailsView(playstation: item),
                            label: {
                                PlaystationView(playstation: item)
                                
                            })
                            .listRowBackground(Image("download")
                                                .resizable()
                                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                                .opacity(0.8))
                        
                        
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Playstations")
                .navigationBarItems(trailing: Button(action: {
                    print("settings clicked")
                        isShowingSettings = true
                }){
                        Image(systemName: "gear")
                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .accentColor(.black)
                                                
                }
                
                .sheet(isPresented: $isShowingSettings){
//                    SettingsView()
                    
                })
                
            }
            
            
            .accentColor(.black)
    }
    
    
}

struct PlaystationListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            PlaystationListView()
                .previewDevice("iPhone 12")
        }
    }
}
