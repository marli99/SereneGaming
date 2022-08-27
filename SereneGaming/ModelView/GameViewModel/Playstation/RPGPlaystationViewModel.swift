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

            RPGPlaystation(name: "Smite",Image: "Screenshot 2022-08-25 at 16.14.19", price: "R900", description: "Smite is a 2014 free-to-play, third-person multiplayer online battle arena video game developed and published by Hi-Rez Studios for Microsoft Windows, Xbox One, PlayStation 4, and Nintendo Switch, and Amazon Luna."),
            
            RPGPlaystation(name: "Dark Souls: Remastered",Image: "71+qNsYZgEL._SX342_", price: "R300", description: "Dark Souls is an ultra-difficult action/RPG that casts you as an undead warrior, slowly losing their humanity as they face off against the eldritch horrors in the dying fantasy realm of Lodran. The twist is that you can briefly reclaim your humanity, which lets you summon a co-op partner for boss fights — and which lets other players invade your world, attempting to claim your humanity for themselves."),
            
            RPGPlaystation(name: "Divinity: Original Sin 2",Image: "Screenshot 2022-08-25 at 16.30.24", price: "R1100", description: "Turn-based RPGs don’t often offer co-op play, which makes Divinity: Original Sin 2 something special. This long, involved game lets you create your own character and journey through the fantasy realm of Rivellon, fighting off a variety of foes both mundane and magical. What’s interesting is that up to three other players can do exactly the same thing, making Divinity: Original Sin 2 arguably the next-best thing to playing through a tabletop RPG with your friends. Granted, the game is long — at least 50 hours — so you’re all in for a long haul.  But it beats sitting around and arguing over who should run the next D&D game."),
            
            RPGPlaystation(name: "The Outer Worlds",Image: "81gry34s54l__sl1500_.400x518", price: "R930", description: "The Outer Worlds is a 2019 action role-playing game developed by Obsidian Entertainment and published by Private Division. The game was released for PlayStation 4, Xbox One, and Microsoft Windows in October 2019, with a Nintendo Switch version released in June 2020."),
            
            RPGPlaystation(name: "Mass Effect Legendary Edition",Image: "Mass-Effect-Legendary-Edition-PS4", price: "R320", description: "Mass Effect Legendary Edition is a compilation of the video games in the Mass Effect trilogy: Mass Effect, Mass Effect 2, and Mass Effect 3. It was developed by BioWare and published by Electronic Arts. All three games were remastered, with visual enhancements, technical improvements, and gameplay adjustments."),
            
            RPGPlaystation(name: "Assassin's Creed Valhalla",Image: "Screenshot 2022-08-25 at 16.35.06", price: "R290", description: "Assassin's Creed Valhalla is a 2020 action role-playing video game developed by Ubisoft Montreal and published by Ubisoft. It is the twelfth major installment in the Assassin's Creed series, and the successor to 2018's Assassin's Creed Odyssey."),
            
            RPGPlaystation(name: "South Park: The Fractured but Whole",Image: "Screenshot 2022-08-25 at 16.36.45", price: "R130", description: "South Park: The Fractured but Whole is a 2017 role-playing video game developed by Ubisoft San Francisco and published by Ubisoft in collaboration with South Park Digital Studios. Based on the American animated sitcom South Park, it is the sequel to the 2014 video game South Park: The Stick of Truth."),
            
            RPGPlaystation(name: "FINAL FANTASY XV",Image: "download (16)", price: "R300", description: "Final Fantasy XV is an action role-playing game developed and published by Square Enix. The fifteenth main installment of the Final Fantasy series, it was released for the PlayStation 4 and Xbox One in 2016, Microsoft Windows in 2018, and as a launch title for Stadia in 2019."),
            
            RPGPlaystation(name: "The Surge 2",Image: "download (17)", price: "R300", description: "Wasteland 3 is a role-playing video game developed by inXile Entertainment and published by Deep Silver. It is a sequel to Wasteland 2 and was released for Microsoft Windows, PlayStation 4 and Xbox One on August 28, 2020. It was ported to Linux and macOS on December 17, 2020."),
            
            RPGPlaystation(name: "Yakuza: Like a Dragon",Image: "91lK6hdvZXL._AC_SX385_", price: "R500", description: "The Surge 2 is an action role-playing video game developed by Deck13 Interactive and published by Focus Home Interactive for Microsoft Windows, PlayStation 4 and Xbox One. It is the sequel to 2017's The Surge.")
            ]
        RPGPlaystationData.append(contentsOf: RPGPlaystation)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}
