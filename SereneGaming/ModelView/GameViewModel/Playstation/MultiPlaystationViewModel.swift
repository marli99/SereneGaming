//
//  MultiXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class MultiPlaystationViewModel: ObservableObject{
    
    @Published var MultiplayerPlaystationData : [MultiPlaystation] = []
    
    init(){
        MultiPlaystations()
    }
    
    func MultiPlaystations(){
        
        let MultiPlaystation: [MultiPlaystation] = [

            MultiPlaystation(name: "Smite",Image: "Screenshot 2022-08-25 at 16.14.19", price: "R900", description: "Smite is a 2014 free-to-play, third-person multiplayer online battle arena video game developed and published by Hi-Rez Studios for Microsoft Windows, Xbox One, PlayStation 4, and Nintendo Switch, and Amazon Luna."),
            
            MultiPlaystation(name: "Back 4 Blood",Image: "Screenshot 2022-08-25 at 16.17.08", price: "R400", description: "Back 4 Blood is a 2021 first-person shooter game developed by Turtle Rock Studios and published by Warner Bros. Interactive Entertainment."),
            
            MultiPlaystation(name: "Paladins",Image: "Screenshot 2022-08-25 at 16.19.06", price: "R177", description: "Paladins: Champions of the Realm is a 2018 free-to-play online hero shooter video game by Hi-Rez. The game was developed by Evil Mojo, an internal studio of Hi-Rez and was released on May 8, 2018 for Microsoft Windows, PlayStation 4, and Xbox One, followed by a Nintendo Switch version released on June 12, 2018."),
            
            MultiPlaystation(name: "Battleborn",Image: "Battlebornps4", price: "R450", description: "Battleborn was a free-to-play first-person shooter video game developed by Gearbox Software and published by 2K Games for Microsoft Windows, PlayStation 4 and Xbox One. The game was released worldwide on May 3, 2016. Battleborn was a hero shooter with elements of multiplayer online battle arenas."),
            
            MultiPlaystation(name: "PlayerUnknown's Battlegrounds",Image: "playerunknowns_battlegrounds_ps4", price: "R400", description: "PUBG: Battlegrounds is a battle royale game developed and published by PUBG Studios, a subsidiary of Krafton. "),
            
            MultiPlaystation(name: "Awesomenauts Assemble!s",Image: "4583994_sa", price: "R180", description: "Awesomenauts Assemble! is a MOBA fitted into the form of an accessible 3-on-3 action platformer. Head out to the online battlefields together with your friends as an online party or in local splitscreen, and never worry about having to wait for an online match because of drop-in matchmaking!"),
            
            MultiPlaystation(name: "Red Dead Redemption 2",Image: "81YdZRdE1BL._SX342_", price: "R750", description: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and a prequel to the 2010 game Red Dead Redemption."),
            
            MultiPlaystation(name: "Call of Duty: Warzone",Image: "Screenshot 2022-08-25 at 16.24.56", price: "R250", description: "Call of Duty: Warzone is a deep, challenging FPS — and it’s completely free, too. You and up to 149 players compete in a huge battle royale, outfitting your soldier with all sorts of weapons, perks and cosmetic items. Winning matches earns you currency, which you can use to further refine your character."),
            
            MultiPlaystation(name: "Dark Souls: Remastered",Image: "71+qNsYZgEL._SX342_", price: "R300", description: "Dark Souls is an ultra-difficult action/RPG that casts you as an undead warrior, slowly losing their humanity as they face off against the eldritch horrors in the dying fantasy realm of Lodran. The twist is that you can briefly reclaim your humanity, which lets you summon a co-op partner for boss fights — and which lets other players invade your world, attempting to claim your humanity for themselves."),
            
            MultiPlaystation(name: "Gears 5",Image: "Screenshot 2022-08-25 at 16.27.23", price: "R170", description: "Gears of War is one of the most recognizable multiplayer shooters on Xbox, and Gears 5 is where you’ll find most of the player base these days. Gears 5 has ongoing Operations, which let players compete in various multiplayer scenarios and maps. There are plenty of challenges to undertake, from cooperative Horde modes to competitive Team Deathmatch modes. You can even play the story campaign cooperatively, either locally or online.")
            ]
            MultiplayerPlaystationData.append(contentsOf: MultiPlaystation)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
    
    
