//
//  MultiXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class MultiXboxViewModel: ObservableObject{
    
    @Published var MultiplayerXboxData : [MultiXbox] = []
    
    init(){
        MultiXboxes()
    }
    
    func MultiXboxes(){
        
        let MultiXbox: [MultiXbox] = [

            MultiXbox(name: "Smite",Image: "images (1)", price: "R677", description: "Smite is a 2014 free-to-play, third-person multiplayer online battle arena video game developed and published by Hi-Rez Studios for Microsoft Windows, Xbox One, PlayStation 4, and Nintendo Switch, and Amazon Luna."),
            
            MultiXbox(name: "Gigantic",Image: "416434-gigantic-xbox-one-front-cover", price: "R477", description: "Gigantic was a free-to-play strategic third-person shooter video game developed by the independent game studio Motiga and published by Perfect World Entertainment. The game focused on team-based action combat with heroes battling alongside a massive guardian."),
            
            MultiXbox(name: "Paladins",Image: "download (6)", price: "R177", description: "Paladins: Champions of the Realm is a 2018 free-to-play online hero shooter video game by Hi-Rez. The game was developed by Evil Mojo, an internal studio of Hi-Rez and was released on May 8, 2018 for Microsoft Windows, PlayStation 4, and Xbox One, followed by a Nintendo Switch version released on June 12, 2018."),
            
            MultiXbox(name: "Battleborn",Image: "1458740189gfzr-zoom", price: "R500", description: "Battleborn was a free-to-play first-person shooter video game developed by Gearbox Software and published by 2K Games for Microsoft Windows, PlayStation 4 and Xbox One. The game was released worldwide on May 3, 2016. Battleborn was a hero shooter with elements of multiplayer online battle arenas."),
            
            MultiXbox(name: "PlayerUnknown's Battlegrounds",Image: "playerunknowns_battlegrounds_xbox_one", price: "R180", description: "PUBG: Battlegrounds is a battle royale game developed and published by PUBG Studios, a subsidiary of Krafton. "),
            
            MultiXbox(name: "Awesomenauts Assemble!s",Image: "download (7)", price: "R200", description: "Awesomenauts Assemble! is a MOBA fitted into the form of an accessible 3-on-3 action platformer. Head out to the online battlefields together with your friends as an online party or in local splitscreen, and never worry about having to wait for an online match because of drop-in matchmaking!"),
            
            MultiXbox(name: "AirMech",Image: "download (8)", price: "R200", description: "Awesomenauts Assemble! is a MOBA fitted into the form of an accessible 3-on-3 action platformer. Head out to the online battlefields together with your friends as an online party or in local splitscreen, and never worry about having to wait for an online match because of drop-in matchmaking!"),
            
            MultiXbox(name: "Call of Duty: Warzone",Image: "Call-of-Duty-Warzone-Gilded-Age-III-Pro-Pack---Xbox-One", price: "R150", description: "Call of Duty: Warzone is a deep, challenging FPS — and it’s completely free, too. You and up to 149 players compete in a huge battle royale, outfitting your soldier with all sorts of weapons, perks and cosmetic items. Winning matches earns you currency, which you can use to further refine your character."),
            
            MultiXbox(name: "Dark Souls: Remastered",Image: "dark_souls_remastered_xbox_one", price: "R900", description: "Dark Souls is an ultra-difficult action/RPG that casts you as an undead warrior, slowly losing their humanity as they face off against the eldritch horrors in the dying fantasy realm of Lodran. The twist is that you can briefly reclaim your humanity, which lets you summon a co-op partner for boss fights — and which lets other players invade your world, attempting to claim your humanity for themselves."),
            
            MultiXbox(name: "Gears 5",Image: "images (2)", price: "R230", description: "Gears of War is one of the most recognizable multiplayer shooters on Xbox, and Gears 5 is where you’ll find most of the player base these days. Gears 5 has ongoing Operations, which let players compete in various multiplayer scenarios and maps. There are plenty of challenges to undertake, from cooperative Horde modes to competitive Team Deathmatch modes. You can even play the story campaign cooperatively, either locally or online.")
            ]
            MultiplayerXboxData.append(contentsOf: MultiXbox)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
    
    
