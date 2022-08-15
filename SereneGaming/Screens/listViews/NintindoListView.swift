//
//  NintindoListView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/13.
//

import SwiftUI

struct NintindoListView: View {
    
    @StateObject var NinViewModel: NintindoViewModel = NintindoViewModel()
    
    @State private var isShowingSettings = false
    var body: some View {
        
       
        NavigationView{
            
            List{
                ForEach(NinViewModel.NintindoData.shuffled()){
                    item in
                    NavigationLink(
                        destination: NintindoDetailsView(Nintindo: item),
                        label: {
                            NintindoView(Nintindo: item)
                            
                        })
//                        .listRowBackground(Color.black)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Nintido")
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

struct NintindoListView_Previews: PreviewProvider {
    static var previews: some View {
        NintindoListView()
    }
}
