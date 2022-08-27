//
//  SportXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

class SportPlaystationViewModel: ObservableObject{
    
    @Published var SportPlaystationData : [SportSimPlaystation] = []
    
    init(){
        SportSimPlaystations()
    }
    
    func SportSimPlaystations(){
        
        let SportSimPlaystation: [SportSimPlaystation] = [

            SportSimPlaystation(name: "Big Rumble Boxing: Creed Champions",Image: "3max", price: "R420", description: "Do you have what it takes to be a champion? Train, fight, and win like Adonis Creed and Rocky Balboa in this knockout boxing game. Are you ready to become a boxing champion? Step into the ring and show off your boxing skills in a knockout arcade experience. Fight as one of 20 iconic characters from the Creed and Rocky movies. Take on world-class opponents across a variety of thrilling locations, or challenge your friends and family in intense, head-to-head matches."),
            
            SportSimPlaystation(name: "Olympic Games Tokyo 2020: The Official Video Game",Image: "Screenshot 2022-08-26 at 10.03.38", price: "R400", description: "Join the fun! The Olympic Games are back, and this time it's your chance for glory! Whether you play with friends, family, or go for gold on the global leaderboards, this is a party game that anyone can pick up and enjoy! Prepare to unleash the competitor within as you create your athlete, customize their skills and pick the perfect costume. Why settle for standard sportswear when you can take center stage as a pirate, astronaut or cowboy? Choose between 18 fun-fueled sporting eventsfrom Tennis and Football to the 100m, Basketball and Boxingthere's always a record to beat and a score to settle. Going for gold has never been this much fun!"),
            
            SportSimPlaystation(name: "Knockout City",Image: "Screenshot 2022-08-26 at 10.05.44", price: "R360", description: "Rule the city through lightning-fast multiplayer matches featuring mind-blowing dodgeball mechanics. Increase your attack by passing to power up dodgeballs, targeting your opponents with a variety of specialized balls, or “balling up” at any time to get thrown by teammates. Assemble an All-Star dodgeball Crew with your friends for multiplayer matches in a seamless cross-play experience! Together, knock out opponents in 3v3, 4v4, or free-for-all matches. Pass, throw, and strategize to dominate as a team and unlock distinctive, Crew-only rewards."),
            
            SportSimPlaystation(name: "RetroMania Wrestling",Image: "Screenshot 2022-08-26 at 10.06.40", price: "R350", description: "RetroMania Wrestling is the official sequel to the classic arcade game Wrestlefest that was released in 1991 by Technos of Japan. RetroMania Wrestling will be a pick up and play arcade wrestling game with beautiful 2D sprites, incredible backgrounds and fast-paced arcade style game play. * 12 16 Unique, distinct playable wrestlers at launch (adding more post launch via DLC) * 2-8 player local multiplayer (Online TBD) * Several match types, including One-on-One matches, Tag Team matches, and the Battle Royal * Ring entrances with entrance music * Multiple entrance attires for each wrestler * Strategic gameplay that is easy to pick up and play * Beautiful 2D pixel art animated sprites with over 700 frames of animation and animated backgrounds * Crowd chants that react to the action on screen."),
            
            SportSimPlaystation(name: "WWE 2K22",Image: "71fgGy4A51L._SL1500_", price: "R600", description: "WWE 2K22 is the latest attempt to truly give fans what they want–a wrestling title that’s both accurate and fun. The previous attempt in WWE 2K20 was a disaster, and thus the team at 2K took their time to make this one work. And for the most part, it does, mainly because it returns to basics and gives both freshness and nuance. With a new control scheme, multiple fresh modes like Create-A-Character and the General Manager mode, and more, this is what fans were waiting for after the last dumpster fire."),
            
            SportSimPlaystation(name: "Evil Genius 2",Image: "8658544-m", price: "R430", description: "Evil Genius 2 is a simulation-meets-real-time strategy game in which you basically plan to take over the world. You’ll be tasked with setting up your own criminal lair on an idyllic island so that you can secretly construct a world-ending weapon that you can ultimately use for ransom. If becoming an evil mastermind sounds like your thing, you’ll also be able to work on building your criminal network and hiring minions to carry out your dastardly deeds as you grow and scale your power. Evil geniuses require gold to carry out their plans, so minions will form a key part of your resource-gathering strategy as you send them out to complete missions."),
            
            SportSimPlaystation(name: "Gas Station Simulator",Image: "300px-Gas_Station_Simulator_cover", price: "R250", description: "Gas Station Simulator is exactly what it sounds like. In this game, players take control of a gas station along the highway. The game is all about renovating the gas station and getting customers to stop for fuel. When your business is turning enough profit, you’ll be able to make upgrades. This means opening a small shop inside the gas station, purchasing stock, managing inventory, hiring employees to run the gas station, and making your once rundown gas station a thriving business. So far, there has been plenty of positive reception with this game, although some have made a note of how much focus is spent on keeping the gas station maintained. For instance, the wall paint will only last a few days, so there’s a good bit of upkeep to deal with."),
            
            SportSimPlaystation(name: "F1 2021",Image: "81BMT0LDkKS._AC_SX385_", price: "R250", description: "F1 2021 is another thrilling racing game based around Formula One. If you played the previous games, you know what to expect here. This very in-depth simulation series sees players overseeing different aspects of F1 racing."),
            
            SportSimPlaystation(name: "Ace Combat 7: Skies Unknown",Image: "71iJgqC9wAL._SX342_", price: "R500", description: "Anyone with a passion for flight has likely played one or more of the Ace Combat games. The seventh installment sits at the top of the list for good reason, with incredibly realistic graphics and a thrilling story to keep players engaged. With VR support, flight enthusiasts can feel as though they’ve truly stepped into the cockpit as they control one of 28 different aircraft. An additional nine have been added as DLC content. The game supports multiplayer with both Team Deathmatch and Battle Royale modes. If you’re looking for realism, award-winning sound design, and high-speed action, look no further."),
            
            SportSimPlaystation(name: "Jurassic World Evolution",Image: "71zvntf2jYL._SX342_", price: "R530", description: "When it comes to building and running a park, there are plenty of titles available. One of the more unique takes on the genre is Jurassic World Evolution. Developed by Frontier Developments, players take control of managing a dinosaur theme park. In a lot of ways, this game is similar to the Zoo Tycoon franchise–the gameplay is easy to understand as well, so this is a great choice for most games.")
            ]
        SportPlaystationData.append(contentsOf: SportSimPlaystation)
//        RolePlayingXboxData.append(contentsOf: RolePlayXbox)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}


