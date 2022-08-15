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

            RPGXbox(name: "Pillars of Eternity",Image: "Minecraft_cover", price: "R277", description: "Pillars of Eternity is an incredible and underrated classic CRPG that draws upon legendary titles like Baldur's Gate, wrapped in an all-new universe. Built by Microsoft's Obsidian, Pillars of Eternity is a tactical RPG that rewards careful planning and resource management, wrapped in a dark fantasy world. Pillars of Eternity revolves around a mysterious cult named The Leaden Key, who worships the goddess Woedica. At the start of the game, you find yourself accidentally caught up in one of the cult's dark rituals. Eventually, you're plagued with visions of past lives and out-of-body experiences, and solving the mysteries of your predicament leads you on a huge adventure across the land of Eora, meeting all manner of fantastical creatures and interesting characters."),
            RPGXbox(name: "The Witcher 3: Wild Hunt",Image: "Minecraft_cover", price: "R477", description: "The Witcher 3: Wild Hunt isn't just one of the best Xbox RPGs, it might be the best Xbox game period. Thanks to its thoughtful blend of cinematic storytelling, fantastic world-building, and gore-tastic combat, The Witcher 3 is a triumph from every angle.  In The Witcher 3, you play as Geralt of Rivia. Witchers are supernatural warriors for hire who travel the land, dispatching monsters and otherworldly entities for coin. Geralt's unique abilities sees him rub shoulders with royalty and the political elite, leading to him getting tangled up in all sorts of court intrigue."),
            RPGXbox(name: "Gigantic",Image: "Minecraft_cover", price: "R177", description: "Paladins: Champions of the Realm is a 2018 free-to-play online hero shooter video game by Hi-Rez. The game was developed by Evil Mojo, an internal studio of Hi-Rez and was released on May 8, 2018 for Microsoft Windows, PlayStation 4, and Xbox One, followed by a Nintendo Switch version released on June 12, 2018."),
            RPGXbox(name: "Battleborn",Image: "Minecraft_cover", price: "R500", description: "Battleborn was a free-to-play first-person shooter video game developed by Gearbox Software and published by 2K Games for Microsoft Windows, PlayStation 4 and Xbox One. The game was released worldwide on May 3, 2016. Battleborn was a hero shooter with elements of multiplayer online battle arenas."),
            RPGXbox(name: "PlayerUnknown's Battlegrounds",Image: "Minecraft_cover", price: "R180", description: "PUBG: Battlegrounds is a battle royale game developed and published by PUBG Studios, a subsidiary of Krafton. "),
            RPGXbox(name: "Awesomenauts Assemble!s",Image: "Minecraft_cover", price: "R200", description: "Awesomenauts Assemble! is a MOBA fitted into the form of an accessible 3-on-3 action platformer. Head out to the online battlefields together with your friends as an online party or in local splitscreen, and never worry about having to wait for an online match because of drop-in matchmaking!"),
            RPGXbox(name: "AirMech",Image: "Minecraft_cover", price: "R200", description: "Awesomenauts Assemble! is a MOBA fitted into the form of an accessible 3-on-3 action platformer. Head out to the online battlefields together with your friends as an online party or in local splitscreen, and never worry about having to wait for an online match because of drop-in matchmaking!")
            ]
        RPGXboxData.append(contentsOf: RPGXbox)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
