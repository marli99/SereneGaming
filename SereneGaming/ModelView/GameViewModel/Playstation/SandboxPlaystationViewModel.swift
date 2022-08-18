//
//  GameViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class SandboxPlaystationViewModel: ObservableObject{
    
    @Published var SandboxPlaystationData : [SandboXPlaystation] = []
    
    init(){
        SandboXPlaystations()
    }
    
    func SandboXPlaystations(){
        
        let SandboXPlaystation: [SandboXPlaystation] = [

            SandboXPlaystation(name: "Minecraft",Image: "Minecraft_cover", price: "R514", description: "Minecraft is a video game in which players create and break apart various kinds of blocks in three-dimensional worlds. The game's two main modes are Survival and Creative. In Survival, players must find their own building supplies and food. They also interact with blocklike mobs, or moving creatures"),
            SandboXPlaystation(name: "Terraria",Image: "Terraria_-_Xbox_One_Video_Game__68748", price: "R900", description: "Terraria is an action-adventure sandbox game developed by Re-Logic. The game was first released for Windows on May 16, 2011, and has since been ported to several other platforms. The game features exploration, crafting, building, painting, and combat with a variety of creatures in a procedurally generated 2D world."),
            SandboXPlaystation(name: "No Man's Sky",Image: "8177IGzv55L._SL1500_", price: "R200", description: "No Man's Sky is an action-adventure survival game developed and published by Hello Games. It was released worldwide for the PlayStation 4 and Microsoft Windows in August 2016, for Xbox One in July 2018, and for the PlayStation 5 and Xbox Series X and Series S consoles in November 2020."),
            SandboXPlaystation(name: "The Witcher 3: Wild Hund",Image: "downloadwitcher", price: "R335", description: "The Witcher 3: Wild Hunt is an action role-playing video game developed by Polish developer CD Projekt Red, and first published in 2015. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective."),
            SandboXPlaystation(name: "Kerbal Space Program",Image: "downloadwitcher", price: "R240", description: "TKerbal Space Program is a space flight simulation video game developed by Mexican developer Squad for Microsoft Windows, macOS, Linux, PlayStation 4, and Xbox One. In the game, players direct a nascent space program, staffed and crewed by green humanoid aliens known as Kerbals.")
            ]
        SandboxPlaystationData.append(contentsOf: SandboXPlaystation)
}
    
    
}
