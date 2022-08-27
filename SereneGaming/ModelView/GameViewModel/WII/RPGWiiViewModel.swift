//
//  RPGXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class RPGWiiViewModel: ObservableObject{
    
    @Published var RPGWiiData : [RPGWii] = []
    
    init(){
        RPGWiis()
    }
    
    func RPGWiis(){
        
        let RPGWii: [RPGWii] = [

            RPGWii(name: "Xenoblade Chronicles",Image: "images (6)", price: "R530", description: "SXenoblade Chronicles is an action role-playing game developed by Monolith Soft and published by Nintendo for the Wii. Initially released in Japan in 2010, it was later released in the PAL regions in 2011 and then in North America in 2012."),
            
            RPGWii(name: "Final Fantasy Fables: Chocobo's Dungeon",Image: "download (26)", price: "R690", description: "Final Fantasy Fables: Chocobo's Dungeon is a role-playing video game published by Square Enix for the Wii. It is an installment in the Chocobo series that focuses on Chocobo and his quest to free a town lost in time from eternal forgetfulness. It is a loose sequel to Chocobo's Dungeon 2 on the PlayStation."),
            
            RPGWii(name: "Arc Rise Fantasia",Image: "arc-rise-fantasia-cover-750", price: "R320", description: "Arc Rise Fantasia is a role-playing video game co-developed by Imageepoch and Marvelous Entertainment for the Wii. It was published in Japan by Marvelous Entertainment in 2009, and in North America by Ignition Entertainment in 2010. A planned European release through Rising Star Games was cancelled."),
            
            RPGWii(name: "Fragile Dreams: Farewell Ruins of the Moon",Image: "download (27)", price: "R230", description: "Fragile Dreams: Farewell Ruins of the Moon is an action role-playing game for the Wii developed by Namco Bandai Games in co-operation with Tri-Crescendo. The game was released by Namco Bandai Games in Japan on January 22, 2009."),
            
            RPGWii(name: "Monster Hunter Tri",Image: "download (28)", price: "R315", description: "Monster Hunter Tri is the third console installment in the Monster Hunter franchise, developed by Capcom and released for the Wii in Japan on August 1, 2009. Monster Hunter Tri was released on April 20, 2010, in North America, April 23 in Europe, and April 29 in Australia."),
            
            RPGWii(name: "Muramasa: The Demon Blade",Image: "Muramasa_The_Demon_Blade", price: "R2000", description: "Muramasa: The Demon Blade, known in Japan as Oboro Muramasa, is an action role-playing game developed by Vanillaware for the Wii, and later the PlayStation Vita. The game was published in 2009 by Marvelous Entertainment, Ignition Entertainment, and Rising Star Games."),
            
            RPGWii(name: "Valhalla Knights: Eldar Saga",Image: "Valhalla_Knights_-_Eldar_Saga_Coverart", price: "R300", description: "Valhalla Knights: Eldar Saga, known in Europe as Eldar Saga, is an action role-playing game developed by K2 and released for the Wii. It is the third installment of the Valhalla Knights series."),
            
            RPGWii(name: "Spectrobes: Origins",Image: "Screenshot 2022-08-26 at 13.04.36", price: "R200", description: "Spectrobes: Origins is an Action RPG video game developed by Genki and published by Disney Interactive Studios and is the third and apparent final entry in the Spectrobes series. It is the first and only Spectrobes game in the series to be developed by Genki or to be exclusive for the Wii."),
            
            RPGWii(name: "Pokémon Battle Revolution",Image: "download (29)", price: "R1200", description: "Pokémon Battle Revolution is the first Wii incarnation of the Pokémon video game franchise. It is also the first Wii game to use the Nintendo Wi-Fi Connection in North America and Japan and the second Wii game to wirelessly interact with the Nintendo DS handheld."),
            
            RPGWii(name: "Harvest Moon: Tree of Tranquility",Image: "Harvest_Moon_-_Tree_of_Tranquility_Coverart", price: "R200", description: "Harvest Moon: Tree of Tranquility is a farming simulation video game released in Japan on June 7, 2007 by Marvelous Interactive, in North America on September 30, 2008 by Natsume, and in the PAL region in October 2009.")
            ]
        RPGWiiData.append(contentsOf: RPGWii)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
