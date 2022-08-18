//
//  RPGXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class RPGXboxViewModel: ObservableObject{
    
    @Published var RPGXboxData : [RPGXbox] = []
    
    init(){
        XboxRPGs()
    }
    
    func XboxRPGs(){
        
        let RPGXbox: [RPGXbox] = [

            RPGXbox(name: "Smite",Image: "Minecraft_cover", price: "R677", description: "Smite is a 2014 free-to-play, third-person multiplayer online battle arena video game developed and published by Hi-Rez Studios for Microsoft Windows, Xbox One, PlayStation 4, and Nintendo Switch, and Amazon Luna.")
            ]
        RPGXboxData.append(contentsOf: RPGXbox)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
