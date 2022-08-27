//
//  ShooterXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class ShooterNintendoViewModel: ObservableObject{
    
    @Published var ShooterNintendoData : [ShooterNintendo] = []
    
    init(){
        ShooterNintendos()
    }
    
    func ShooterNintendos(){
        
        let ShooterNintendo: [ShooterNintendo] = [

            ShooterNintendo(name: "Call of Duty Modern Warfare",Image: "download (40)", price: "R630", description: "The stakes have never been higher as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power. Call of Duty®: Modern Warfare® engulfs fans in an incredibly raw, gritty, provocative narrative that brings unrivalled intensity and shines a light on the changing nature of modern war."),
            
            ShooterNintendo(name: "Grand Theft Auto",Image: "download (41)", price: "R1200", description: "Far Cry Vengeance is a 2006 first-person shooter game developed by Ubisoft Montreal and published by Ubisoft for the Wii. It is a remake of Far Cry Instincts: Evolution, originally released for the Xbox, and features changed controls, new weapons and vehicles, and three additional levels."),
            
            ShooterNintendo(name: "The House of the Dead: Overkill",Image: "images (10)", price: "R500", description: "The House of the Dead: Overkill is a horror-themed rail shooter light gun game developed by Headstrong Games and published by Sega for the Wii in 2009."),
            
            ShooterNintendo(name: "VA-11 Hall-A Cyberpunk Bartender Action",Image: "download (42)", price: "R1700", description: "VA-11 HALL-A: Cyberpunk Bartender Action is an indie bartender simulation video game with visual novel elements, developed by Venezuelan studio Sukeban Games and published by Ysbryd Games."),
            
            ShooterNintendo(name: "Resident Evil: Origin Collection",Image: "Screenshot 2022-08-26 at 19.56.17", price: "R700", description: "Return to the series origins - Discover the truth behind the horrors in the Resident Evil mansion, as well as what led up to them, in these titles which mark the beginning of the Resident Evil timeline."),
            
            ShooterNintendo(name: "Sniper Elite 4",Image: "73817-1600392079", price: "R560", description: "Sniper Elite 4 is a 2017 third-person tactical shooter stealth video game developed and published by Rebellion Developments. The sequel to Sniper Elite III, the game was released for Microsoft Windows, PlayStation 4 and Xbox One on 14 February 2017 and for Stadia on 1 November 2020."),
            
            ShooterNintendo(name: "Sniper Elite",Image: "download (43)", price: "R240", description: "Sniper Elite is a 2005 third-person tactical shooter stealth video game developed by Rebellion Developments and published by MC2 France in Europe and by Namco Hometek in North America, in 2005. In 2012, to coincide with the release of the remake Sniper Elite V2, it was re-issued through Steam by Rebellion itself."),
            
            ShooterNintendo(name: "The Hunt",Image: "9332040-m", price: "R730", description: "Cabela's: The Hunt – Championship Edition is the most exciting hunting game to the Nintendo Switch. You will experience the thrill of the hunt while you stalk and kill your prey in some of North America's most famous hunting spots. With local multiplayer, arcade mini-games, and season hunt modes, Cabela's: The Hunt is fun for gamers and hunters alike."),
            
            ShooterNintendo(name: "Harry Potter collection",Image: "download (44) ", price: "R660", description: "Harry Potter and the Deathly Hallows – Part 1 is a 2010 action-adventure video game. It is based on the 2010 film of the same name. It was released on November 16, 2010 in the United States, November 18, 2010 in Australia, and on November 19, 2010 in Europe and India."),
            
            ShooterNintendo(name: "G.I. Joe: The Rise of Cobra",Image: "GI-Joe-Operation-Blackout-Gold-Edition-GameStop-Exclusive---Nintendo-Switch", price: "R200", description: "G.I. Joe: The Rise of Cobra is a video game adaptation of the film of the same name. The game takes place after the film. The Xbox 360, PlayStation 3, Wii, PlayStation 2, and PSP versions are similar, while the DS version and the mobile phone versions are different.")
            ]

        ShooterNintendoData.append(contentsOf: ShooterNintendo)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
}
    
    
}
