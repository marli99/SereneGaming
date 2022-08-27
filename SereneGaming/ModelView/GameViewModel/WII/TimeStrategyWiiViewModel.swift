//
//  TimeStrategyXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/15.
//

import SwiftUI

class TimeStrategyWiiViewModel: ObservableObject{
    
    @Published var TimeStrategyWiiData : [TimeStrategyWii] = []
    
    init(){
        TimeStrategyWiis()
    }
    
    func TimeStrategyWiis(){
        
        let TimeStrategyWii: [TimeStrategyWii] = [
            
            TimeStrategyWii(name: "Dawn of Discovery",Image: "download (19)", price: "R350", description: "DAnno 1404, known as Dawn of Discovery in North America, is a city-building and economic simulation game with real-time strategy elements, part of the Anno series. Released in 2009, it was developed by Related Designs, produced by Blue Byte, and published by Ubisoft."),
            
            TimeStrategyWii(name: "Robocalypse: Beaver Defense",Image: "386227-robocalypse-beaver-defense-wii-front-cover", price: "R200", description: "Robocalypse: Beaver Defense is a tower defense video game developed by Ukrainian studio Vogster Entertainment for WiiWare, and a follow up to their Nintendo DS game Robocalypse. It was released in North America on May 31, 2010 and in Europe on June 4, 2010."),
            
            TimeStrategyWii(name: "Worms: Battle Islands",Image: "91vkr41sI+L._SY445_", price: "R700", description: "Worms: Battle Islands is an artillery turn-based tactics developed by Team17 and part of the Worms series. It was released for the PlayStation Portable and Wii."),
            
            TimeStrategyWii(name: "Pikmin 3",Image: "916IDjwdN2L._SL1500_", price: "R500", description: "Pikmin 3 is a real-time strategy and puzzle video game developed and published by Nintendo for the Wii U video game console. It is the sequel to the GameCube games Pikmin and Pikmin 2, and was released in Japan on July 13, 2013, and in all other regions within the following month."),
            
            TimeStrategyWii(name: "Star Fox Guard",Image: "awxwus200177", price: "R610", description: "Star Fox Guard is a tower defense video game co-developed by Nintendo and PlatinumGames for the Wii U. The game was bundled as a separate disc for the first print edition of Star Fox Zero during its release in April 2016, and as a digital download code on the Wii U eShop afterwards."),
            
            TimeStrategyWii(name: "SteamWorld Heist",Image: "91QvcL5bLZL", price: "R480", description: "SteamWorld Heist is a 2D turn-based tactics shooter developed by Swedish video game developer Image & Form."),
            
            TimeStrategyWii(name: "Final Fantasy Crystal Chronicles: My Life as a Darklord",Image: "MV5BOTQ2ZmZmMTktN2U5NS00MzM1LWEzM2UtZWQ0YjEzY2Q5NzIzXkEyXkFqcGdeQXVyMTk5NDI0MA@@._V1_", price: "R470", description: "Final Fantasy Crystal Chronicles: My Life as a Darklord is a 2009 tower defense video game developed and published by Square Enix for the Wii and distributed through the WiiWare download service. The game is an entry in the Final Fantasy franchise, forming part of the Crystal Chronicles subseries."),
            
            TimeStrategyWii(name: "Battalion Wars 2",Image: "51KdlQvlKOL._SY445_", price: "R220", description: "Battalion Wars 2, released as Assault!! Famicom Wars VS in Japan, is a 2007 real-time tactics game developed by Kuju London and published by Nintendo for the Wii. It is the sequel to Battalion Wars, in which players take command of a battalion of troops to complete missions and defeat opposing forces in battle."),
            
            TimeStrategyWii(name: "Battleship",Image: "Screenshot 2022-08-26 at 11.24.56", price: "R480", description: "Battleship is the name of two video games based on the film of the same name, both of them published by Activision in 2012. It was released for PlayStation 3, Xbox 360, Wii, Nintendo DS, and Nintendo 3DS."),
            
            TimeStrategyWii(name: "Military Madness: Nectaris",Image: "548af3ef-617b-41c4-b796-82faf9b37a68", price: "R200", description: "Military Madness: Nectaris is a turn-based strategy game developed for WiiWare, Xbox Live Arcade and PlayStation Network by Hudson Soft. It is the latest game in the Nectaris series, and an enhanced remake of the first game.")
            ]
        
        TimeStrategyWiiData.append(contentsOf: TimeStrategyWii)
}
    
    
}
