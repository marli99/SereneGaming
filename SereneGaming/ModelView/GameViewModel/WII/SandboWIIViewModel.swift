//
//  GameViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class SandboWIIViewModel: ObservableObject{
    
    @Published var SandboxWIIData : [SandboxWII] = []
    
    init(){
        SandboxWIIs()
    }
    
    func SandboxWIIs(){
        
        let SandboxWII: [SandboxWII] = [

            SandboxWII(name: "The Sims 3",Image: "71yrL0r1w5L._SL1076_", price: "R300", description: "The Sims 3 is a 2009 life simulation video game developed by the Redwood Shores studio of Maxis, and published by Electronic Arts. Part of The Sims series, it is the sequel to The Sims 2. It was released on June 2, 2009, for macOS, Microsoft Windows and smartphone versions."),
            
            SandboxWII(name: "Xenoblade Chronicles",Image: "Terraria_-_Xbox_One_Video_Game__68748", price: "R817", description: "Xenoblade Chronicles is a series of action role-playing games developed by Monolith Soft and published by Nintendo. It is a part of the Xeno metaseries created by Tetsuya Takahashi, but was formed after Nintendo's acquisition of Monolith Soft in 2007."),
            
            SandboxWII(name: "Far Cry: Vengeance",Image: "51cbdTLgnRL", price: "R150", description: "Far Cry Vengeance is a 2006 first-person shooter game developed by Ubisoft Montreal and published by Ubisoft for the Wii. It is a remake of Far Cry Instincts: Evolution, originally released for the Xbox, and features changed controls, new weapons and vehicles, and three additional levels."),
            
            SandboxWII(name: "Bully: Scholarship Edition",Image: "download (18)", price: "R130", description: "Bully is an action-adventure video game developed by Rockstar Vancouver and published by Rockstar Games. It was released on 17 October 2006 for the PlayStation 2."),
            
            SandboxWII(name: "No More Heroes",Image: "51zs43DDR3L._AC_SY1000_", price: "R200", description: "No More Heroes is a 2007 action-adventure hack and slash video game for the Wii. It was developed by Grasshopper Manufacture and published by Marvelous Entertainment, Ubisoft, and Rising Star Games. The game was directed, designed, and written by Goichi Suda, also known by his nickname Suda51."),
            
            SandboxWII(name: "Disney Infinity",Image: "Wii-_-Wii-U-1-3", price: "R1400", description: "Disney Infinity is an arcade game in which the most famous characters and worlds from Disney and Pixar movies appear. Production allows you to create your own levels based on selected elements of fairytale brands."),
            
            SandboxWII(name: "Retro City Rampage",Image: "Screenshot 2022-08-26 at 10.29.51", price: "R1400", description: "Retro City Rampage is an action-adventure game developed by Vblank Entertainment. It is a parody of retro games and 1980s and 1990s pop culture, as well as Grand Theft Auto and similar games."),
            
            SandboxWII(name: "SimCity Creator",Image: "Screenshot 2022-08-26 at 10.31.21", price: "R700", description: "SimCity Creator is a video game in the Sim game series by Electronic Arts. It was released for the Wii in 2008."),
            
            SandboxWII(name: "Cabela's African Adventures",Image: "91Tiy11vz-L._SY445_", price: "R300", description: "Description. Explore the vast wilderness of Africa on foot and by vehicle, where you'll go head to head with the most ferocious beasts on the planet as you attempt to take down the biggest of the 'Big 5”; The Rhino, Lion, Leopard, Cape Buffalo & African Elephant in Cabela's African Adventures.")
            ]
        SandboxWIIData.append(contentsOf: SandboxWII)
}
    
    
}
