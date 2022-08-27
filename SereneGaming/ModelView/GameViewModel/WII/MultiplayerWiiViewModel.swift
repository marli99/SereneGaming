//
//  ShooterXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class MultiplayerWiiViewModel: ObservableObject{
    
    @Published var MultiplayerWiiData : [MultiWii] = []
    
    init(){
        MultiWiis()
    }
    
    func MultiWiis(){
        
        let MultiWii: [MultiWii] = [

            MultiWii(name: "Call of Duty Modern Warfare",Image: "Screenshot 2022-08-26 at 11.43.45", price: "R630", description: "The stakes have never been higher as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power. Call of Duty®: Modern Warfare® engulfs fans in an incredibly raw, gritty, provocative narrative that brings unrivalled intensity and shines a light on the changing nature of modern war."),
            
            MultiWii(name: "Far Cry Vengenace",Image: "Far_Cry_Vengeance_-_Box_Front", price: "R150", description: "Far Cry Vengeance is a 2006 first-person shooter game developed by Ubisoft Montreal and published by Ubisoft for the Wii. It is a remake of Far Cry Instincts: Evolution, originally released for the Xbox, and features changed controls, new weapons and vehicles, and three additional levels."),
            
            MultiWii(name: "The House of the Dead: Overkill",Image: "download (20)", price: "R2400", description: "The House of the Dead: Overkill is a horror-themed rail shooter light gun game developed by Headstrong Games and published by Sega for the Wii in 2009."),
            
            MultiWii(name: "Cyberpunk 2077",Image: "Screenshot 2022-08-26 at 11.52.25", price: "R1000", description: "Cyberpunk 2077 is an action role-playing video game developed by CD Projekt Red and published by CD Projekt. The story takes place in Night City, an open world set in the Cyberpunk universe. "),
            
            MultiWii(name: "Resident Evil: The Umbrella Chronicles",Image: "download (21)", price: "R100", description: "Resident Evil: The Umbrella Chronicles is an on-rails light gun shooter video game developed by Capcom and Cavia as part of the Resident Evil series."),
            
            MultiWii(name: "Battlefield 4",Image: "Screenshot 2022-08-26 at 11.50.03", price: "R460", description: "Battlefield 4 is a 2013 first-person shooter video game developed by DICE and published by Electronic Arts."),
            
            MultiWii(name: "Sniper Elite",Image: "2705034498605179215", price: "R240", description: "Sniper Elite is a 2005 third-person tactical shooter stealth video game developed by Rebellion Developments and published by MC2 France in Europe and by Namco Hometek in North America, in 2005. In 2012, to coincide with the release of the remake Sniper Elite V2, it was re-issued through Steam by Rebellion itself."),
            
            MultiWii(name: "Cabela's Dangerous Hunts 2011",Image: "7822552-l", price: "R280", description: "Cabela's Dangerous Hunts 2011 is a hunting video game published by Activision in conjunction with Cabela's for the Nintendo DS, PlayStation 3, Xbox 360, and Wii."),
            
            MultiWii(name: "Harry Potter and the Deathly Hallows: Part I",Image: "71vvv1GDT1L._SY445_", price: "R160", description: "Harry Potter and the Deathly Hallows – Part 1 is a 2010 action-adventure video game. It is based on the 2010 film of the same name. It was released on November 16, 2010 in the United States, November 18, 2010 in Australia, and on November 19, 2010 in Europe and India."),
            
            MultiWii(name: "G.I. Joe: The Rise of Cobra",Image: "Screenshot 2022-08-26 at 11.59.01", price: "R200", description: "G.I. Joe: The Rise of Cobra is a video game adaptation of the film of the same name. The game takes place after the film. The Xbox 360, PlayStation 3, Wii, PlayStation 2, and PSP versions are similar, while the DS version and the mobile phone versions are different.")
            ]

        MultiplayerWiiData.append(contentsOf: MultiWii)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
}
    
    
}
