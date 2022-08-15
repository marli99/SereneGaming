//
//  Nintindo.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/13.
//
import SwiftUI

class NintindoViewModel: ObservableObject{
    
    @Published var NintindoData : [Nin] = []
    
    init(){
        getNintindo()
    }
    
    func getNintindo(){
        
        let Nintindo: [Nin] = [
            
            Nin(name: "wii MODEL RVL-001",date: "2006 - 2011", Image: "WiiOne", price: "R800", description: "This model is the original release model and the one you would have if you purchased your system between November 2006 and October 2011. Easily the most recognizable of the three models, this particular one was popular for its ability to “stand up” vertically or be laid flat horizontally, although the latter was less popular until the next model release. I want to say the PS2 popularized the “user’s choice” of orientation, but the Wii kept that train rolling in serious fashion by having a detachable base! Here are a few facts about the RVL-001 as given to us by Nintendo: Released in November of 2006. Serial Number prefix is “LU” or “LB.”"),
            Nin(name: "Wii MODEL RVL-101",date: "2011", Image: "WiiTwo", price: "R900", description: "Here is the RVL-101. Being released almost exactly 5 years after the original system release, it makes sense. As sales start to decline (not necessarily in a negative way, but naturally interests wane), that is when prices get cut and top-tier games start to get bundled in, such as New Super Mario Bros. I’m no expert in Nintendo’s business model, but it seems logical that a price-cut may also mean something else has to get cut in production in order to maintain the same profit margin on hardware sales. The RVL-101 model sees the Wii packaged WITHOUT the vertical (or “tower”) stand and no GameCube controller or memory card ports. This is the model that I own and I am VERY upset about it. I may even lose a couple minutes of sleep over it. Here are the facts about the RVL-101 as given to us by Nintendo: Released in October of 2011, Serial number prefix is “KU” or “KB.”, Has the same look, feel, and function as RVL-001, with the following exceptions: Designed to sit horizontally rather than vertically. The GameCube controller and memory card sockets have been removed. The system is not compatible with GameCube games or hardware/accessories. The system does not support Wii games that require GameCube controllers/accessories, therefore the following games are incompatible: Active Life: Explorer, Active Life: Extreme Challenge, Active Life: Magical Carnival, Active Life: Outdoor Challenge, Ultimate Party Challenge. And this is just what Nintendo tells us about the RVL-101. From my research, I see a few people mentioning that the RVL-101 model actually has improved visuals, although it doesn’t appear Nintendo has ever said that out loud. I can’t really get behind that notion because it would have been an incredible marketing pitch for Nintendo to slap “Now with improved graphics” on all of their new ads and console boxes. So for that reason, I do not think they improved the graphics."),
            Nin(name: "Wii MODEL RVL-201",date: "2013", Image: "WiiThree", price: "R500", description: "This isn’t to say that the Wii Mini doesn’t have its place. It’s just such a massive downgrade from the exciting fun you expected. But what the Wii Mini DOES do is… It offers up affordable gaming so more interested peoples can get down with ol’ Nintendo. And considering that this was released in November of 2013 (US), Wii Mini owners could also choose from 7 years of games with many of the older ones being $10 or less (shitty ones). Don’t get me started on the Wii shovelware. In summary, this RVL-201 model is about as bare bones of a system as I have ever seen. It lacks GameCube hook-ups, only has 1 UBS port instead of the normal 2 found on the other Wiis, no SD card slot, and has no component or S-video hook-ups. It’s about as “plug-and-play” as it gets, just lacks a ton of built-in games like you’d find on the NeoGeo Gold or NES Classic.")
        ]

    NintindoData.append(contentsOf: Nintindo)
}
    
    
}
