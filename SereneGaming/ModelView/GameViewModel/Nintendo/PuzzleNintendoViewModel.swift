//
//  SportXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

class PuzzleNintendoViewModel: ObservableObject{
    
    @Published var PuzzleNintendoData : [PuzzleNintendo] = []
    
    init(){
        PuzzleNintendos()
    }
    
    func PuzzleNintendos(){
        
        let PuzzleNintendo: [PuzzleNintendo] = [

            PuzzleNintendo(name: "Super Puzzle Pack",Image: "download (51)", price: "R1150", description: "Super Puzzle Pack brings together hundreds of unique puzzles played across 4 different puzzle types. Play with up to 4 players for hours of Jigsaw Fun. Enjoy two stunning hand-drawn match-3 games in a solo adventure. Challenge friends to a 1-vs-1 battle in the 2048 challenge, or in a unique match-5 game with a twist.."),
            
            PuzzleNintendo(name: "World of Goo",Image: "Screenshot 2022-08-26 at 22.12.02", price: "R160", description: "World of Goo is a puzzle video game developed and published by independent game developer 2D Boy. The game was released on Microsoft Windows and Wii platforms on October 13, 2008, with releases on Nintendo Switch, Mac OS X, Linux, and various mobile devices in subsequent years."),
            
            PuzzleNintendo(name: "Little Inferno",Image: "Screenshot 2022-08-26 at 22.13.45", price: "R540", description: "Trauma Team is a 2010 simulation video game developed and published by Atlus for the Wii. It is the fifth entry and current final entry in the Trauma Center series."),
            
            PuzzleNintendo(name: "Unpacking",Image: "download (52)", price: "R1080", description: "Unpacking is a puzzle video game developed by Witch Beam and published by Humble Bundle for Microsoft Windows, macOS, Linux, Nintendo Switch, Xbox One, PlayStation 4 and PlayStation 5."),
            
            PuzzleNintendo(name: "Mario & Sonic at the Onlympic Games Tokyo",Image: "6352166_sd", price: "1020", description: "Mario & Sonic at the Olympic Games Tokyo 2020 is a 2019 sports video game based on the 2020 Summer Olympics. It is the sixth game in the Mario & Sonic series, a crossover between Nintendo's Super Mario and Sega's Sonic the Hedgehog franchises, and the first since the Rio 2016 Olympic Games edition."),
            
            PuzzleNintendo(name: "Rayman Raving Rabbids",Image: "df2gonj-63f56e28-30c5-4048-ab2a-5bcc6004d2ce", price: "R640", description: "Rayman Raving Rabbids is a 2006 party video game developed and published by Ubisoft. The game is a spinoff in the Rayman series. The game consists of 75 minigames."),
            
            PuzzleNintendo(name: "Lonely Mountains: Downhill",Image: "download (49)", price: "R500", description: "Lonely Mountains: Downhill is a 2019 sports video game developed by German developer Megagon Industries and published by Thunderful. The game is a third-person biking game, where the player tries to complete courses on different mountains.")
            ]
        PuzzleNintendoData.append(contentsOf: PuzzleNintendo)
    }
    
}


