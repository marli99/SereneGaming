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
    
    var body: some View {
            NavigationView{
                List{
                    ForEach(WIIViewModel.WiiData.shuffled()){
                        item in
                        NavigationLink(
                            destination: WiiDetailsView(WII: item),
                            label: {
                                WiiView(WII: item)
                                
                            })
                            .listRowBackground(Color.black)
                    }
                }
                
                .navigationTitle("Wii")
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

struct WiiListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            WiiListView()
                .previewDevice("iPhone 12")
        }
    }
}
