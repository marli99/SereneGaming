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
    
    var body: some View {
            NavigationView{
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
                .navigationTitle("Xbox")
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
            .accentColor(.white)
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
