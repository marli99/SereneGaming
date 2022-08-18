//
//  RPGXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class RPGPlaystationViewModel: ObservableObject{
    
    @Published var RPGPlaystationData : [RPGPlaystation] = []
    
    init(){
        XboxPlaystations()
    }
    
    func XboxPlaystations(){
        
        let RPGPlaystation: [RPGPlaystation] = [

            RPGPlaystation(name: "Smite",Image: "Minecraft_cover", price: "R677", description: "Smite is a 2014 free-to-play, third-person multiplayer online battle arena video game developed and published by Hi-Rez Studios for Microsoft Windows, Xbox One, PlayStation 4, and Nintendo Switch, and Amazon Luna.")
            ]
        RPGPlaystationData.append(contentsOf: RPGPlaystation)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
