//
//  SettingsScreenFinal.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SettingsScreenFinal: View {
    
    @State private var showMenu: Bool = false
    
    @AppStorage("isDarkMode") var isDarkMode:Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                GroupBox(label: HStack{
                    Text("Serene Gaming")
                    Spacer()
                    Image(systemName: "info.circle.fill")
                }, content:{
                    Text("Serene Gaming is a Informational Inventory Database of the most Popular Gaming Consoles and their games!")
                        .padding()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                })
                .padding()
                
                GroupBox(){
                    DisclosureGroup("Development Information"){
                        Divider().padding(.vertical, 2)
                        
                        HStack{
                            Image(systemName: "info.circle")
                            Text("Version")
                            Spacer()
                            Text("1.0.0")
                                .bold()
                        }
                        
                        Divider().padding(.vertical, 2)
                        
                        HStack{
                            Image(systemName: "info.circle")
                            Text("Developed by")
                            Spacer()
                            Text("Marli Correia")
                                .bold()
                        }
                        
                    }
                }.padding()
                
                GroupBox(){
                    HStack{
                        Text("Source Link")
                        Spacer()
                        Link(destination: URL(string: "https://github.com/marli99/SereneGaming")!, label: {
                            Text("GitHub")
                        })
                        Image(systemName: "arrow.up.right.square")
                    }.padding()
                }
                .padding()
                .navigationTitle("Settings")
            
                
                
                GroupBox(){
                    
                    HStack{
                        Text("Theme")
                      
                        Spacer()
                        Picker("Mode", selection: $isDarkMode){
                                    Text("Light")
                                        .tag(false)
                                    Text("Dark")
                                        .tag(true)
                            }.pickerStyle(SegmentedPickerStyle()).padding()
                    }.padding()
                }.padding()
                .toolbar(content: {
                    
                    NavigationLink(
                    
                        destination: ContentView(),
                        label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .imageScale(.large)
                        })
                })
            }
        }
        
        .navigationBarHidden(true)
        .foregroundColor(.primary)
        .accentColor(.primary)
        
    }
}

struct SettingsScreenFinal_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsScreenFinal()
          
        }
        
    }
}
