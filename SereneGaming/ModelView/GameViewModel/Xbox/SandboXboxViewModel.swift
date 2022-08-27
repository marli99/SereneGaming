//
//  GameViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class SandboXboxViewModel: ObservableObject{
    
    @Published var SandboxXboxData : [SandboXbox] = []
    
    init(){
        SandboXboxes()
    }
    
    func SandboXboxes(){
        
        let SandboXbox: [SandboXbox] = [

            SandboXbox(name: "Minecraft",Image: "Minecraft_cover", price: "R514", description: "Minecraft is a video game in which players create and break apart various kinds of blocks in three-dimensional worlds. The game's two main modes are Survival and Creative. In Survival, players must find their own building supplies and food. They also interact with blocklike mobs, or moving creatures"),
            
            SandboXbox(name: "Terraria",Image: "Terraria_-_Xbox_One_Video_Game__68748", price: "R900", description: "Terraria is an action-adventure sandbox game developed by Re-Logic. The game was first released for Windows on May 16, 2011, and has since been ported to several other platforms. The game features exploration, crafting, building, painting, and combat with a variety of creatures in a procedurally generated 2D world."),
            
            SandboXbox(name: "No Man's Sky",Image: "8177IGzv55L._SL1500_", price: "R200", description: "No Man's Sky is an action-adventure survival game developed and published by Hello Games. It was released worldwide for the PlayStation 4 and Microsoft Windows in August 2016, for Xbox One in July 2018, and for the PlayStation 5 and Xbox Series X and Series S consoles in November 2020."),
            
            SandboXbox(name: "The Witcher 3: Wild Hund",Image: "downloadwitcher", price: "R335", description: "The Witcher 3: Wild Hunt is an action role-playing video game developed by Polish developer CD Projekt Red, and first published in 2015. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective."),
            
            SandboXbox(name: "Kerbal Space Program",Image: "kerbal-space-program-enhanced-edition-xbox-one-cover-cdkeys", price: "R240", description: "TKerbal Space Program is a space flight simulation video game developed by Mexican developer Squad for Microsoft Windows, macOS, Linux, PlayStation 4, and Xbox One. In the game, players direct a nascent space program, staffed and crewed by green humanoid aliens known as Kerbals."),
            
            SandboXbox(name: "Don't Starve", Image: "81HvB2epfhL._SL1500_", price: "R265", description: "Don't Starve is a survival video game developed by the Canadian indie video game developer Klei Entertainment. The game was initially released for Microsoft Windows, OS X, and Linux on April 23, 2013. A PlayStation 4 port, renamed Don't Starve: Giant Edition, became available the following year."),
            
            SandboXbox(name: "Portal Knights", Image: "download (2)", price: "R900", description: "Portal Knights is an independent survival action role-playing video game developed by Keen Games and published by 505 Games. It was first released on Steam on 18 May 2017 and subsequently released for PlayStation 4, Xbox One, Nintendo Switch, Android, and iOS."),
            
            SandboXbox(name: "Subnautica", Image: "8202596041058179215", price:"R670", description:"Subnautica is an open-world survival action-adventure video game developed and published by Unknown Worlds Entertainment. Players are free to explore the ocean on the alien planet 4546B, after their spaceship, the Aurora, crashes on the planet's surface."),
            
            SandboXbox(name: "Sea of Thieves", Image: "6189+dNLdBL._SL1000_", price:"R300" ,description:"Sea of Thieves is a 2018 action-adventure game developed by Rare and published by Microsoft Studios. The player assumes the role of a pirate who completes voyages from different trading companies. The multiplayer game sees players explore an open world via a pirate ship from a first-person perspective."),
            
            SandboXbox(name: "Surviving Mars", Image: "fxYlfX0BU-H6pqHQyieak9-l2SmGq5sx1r-ycDVeAtw_350x200_1x-0", price: "R220", description: "Surviving Mars is a city building simulation video game initially developed by the Bulgarian studio Haemimont Games, and later by Abstraction Games, and published by Paradox Interactive. It was released on Microsoft Windows, macOS, Linux, PlayStation 4 and Xbox One on March 15, 2018.")
            ]
        SandboxXboxData.append(contentsOf: SandboXbox)
}
    
    
}
