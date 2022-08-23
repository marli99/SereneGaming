//
//  SideMenuView.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/22.
//

import SwiftUI

struct SideMenuView: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink(
                    destination: SettingsScreenFinal(),
                        label: {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 32.0, height: 32.0)
                            Text("Settings")
                        })
                        .navigationBarHidden(true)
            }
            .frame(width:400, height: 775, alignment: .topLeading)
            .padding()
            .padding(.top, 120)
            .background(Color(.black))
            .edgesIgnoringSafeArea(.all)
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        
    }
    
}
    

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
