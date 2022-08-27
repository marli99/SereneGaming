//
//  SportXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

class SportNintendoViewModel: ObservableObject{
    
    @Published var SportNintendoiData : [SportNintendo] = []
    
    init(){
        SportNintendos()
    }
    
    func SportNintendos(){
        
        let SportNintendo: [SportNintendo] = [

            SportNintendo(name: "Nintendo Switch Sports",Image: "download (45)", price: "R850", description: "Nintendo Switch Sports is the late, but very welcome, spiritual sequel to the Wii Sports games. That original game, which was included with every Wii console sold, was partly responsible for that console’s amazing success. It was such an accessible game that it reached players who wouldn’t normally, or may have never, played a game before in their lives to jump in for a game of bowling or tennis match."),
            
            SportNintendo(name: "Mario Tennis Acest",Image: "514oAKnAYGL._SY445_", price: "R1200", description: "WMario Tennis Aces is a tennis game developed by Camelot Software Planning and published by Nintendo for the Nintendo Switch. Part of the Mario Tennis series, it was released worldwide on June 22, 2018. The game sold over 3 million copies by the end of 2019, making it one of the best-selling games on the Switch."),
            
            SportNintendo(name: "Sports Party",Image: "91n+66COBeL._SY500_", price: "R940", description: "BSports Party is a collection of sports games for the Nintendo Switch published by Ubisoft. Most of them rely on motion controls."),
            
            SportNintendo(name: "Rocket League",Image: "51gsZWJXMML", price: "R1800", description: "Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for Microsoft Windows and PlayStation 4 in July 2015, with ports for Xbox One and Nintendo Switch being released later on."),
            
            SportNintendo(name: "NBA 2K21",Image: "download (48)", price: "R500", description: "NBA 2K21 is a basketball simulation video game that was developed by Visual Concepts and published by 2K Sports, based on the National Basketball Association. It is the 22nd installment in the NBA 2K franchise and the successor to NBA 2K20, and the predecessor to NBA 2K22. "),
            
            SportNintendo(name: "Mario & Sonic at the Olympic Winter Games",Image: "Screenshot 2022-08-26 at 21.51.08", price: "R940", description: "Mario & Sonic at the Olympic Winter Games is a 2009 sports and party game developed by Sega. Like its predecessor, it was published by Nintendo for Japan and Korea and by Sega in the Western world."),
            
            SportNintendo(name: "Lonely Mountains: Downhill",Image: "download (49)", price: "R500", description: "Lonely Mountains: Downhill is a 2019 sports video game developed by German developer Megagon Industries and published by Thunderful. The game is a third-person biking game, where the player tries to complete courses on different mountains."),
            
            SportNintendo(name: "What the Golf",Image: "download (49)", price: "3080", description: "What the Golf? is a video game developed and published by Triband. It was originally published on Apple Arcade subscription by The Label on 19 September 2019."),
            
            SportNintendo(name: "Roller Champions",Image: "Cover_Art_of_Roller_Champions", price: "R500", description: "Roller Champions is a free-to-play sports game developed by Ubisoft Montreal and published by Ubisoft released on May 25, 2022 for Microsoft Windows, PlayStation 4 and Xbox One, and for Nintendo Switch June 21, 2022.")
            ]
        SportNintendoiData.append(contentsOf: SportNintendo)
    }
    
}


