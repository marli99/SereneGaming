//
//  SettingsScreenFinal.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

struct SettingsScreenFinal: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
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
                Spacer()
                
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
                }.padding()
                .navigationTitle("Settings")
                .navigationBarItems(trailing: Button(action:
                    {print("Clicked")
//                        presentationMode.wrappedValue.dismiss()
                    }, label:{
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
            }))
                
            }
        }
    }
}

struct SettingsScreenFinal_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreenFinal()
    }
}
