//
//  RolePlayingXboxViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/18.
//

import SwiftUI

class RolePlayingPlaystationViewModel: ObservableObject{
    
    @Published var RolePlayingPlaystationData : [RolePlayPlaystation] = []
    
    init(){
        RolePlayPlaystations()
    }
    
    func RolePlayPlaystations(){
        
        let RolePlayPlaystation: [RolePlayPlaystation] = [

    
            RolePlayPlaystation(name: "The Witness",Image: "Screenshot 2022-08-25 at 16.40.59", price: "R400", description: "Welcome to a deserted island filled with hundreds of puzzles settled into a beautiful world. The Witness is all about solving 2D grid-based puzzles, and each one is a 2D representation of a grid map. You'll use a variety of different methods to solve them, and while things start quite easy, they don't stay that way. In the early game, puzzles might be solved within minutes, while down the line, you could spend an hour or more to solve one of them."),
            
            RolePlayPlaystation(name: "Inside and Limbo Double Pack",Image: "71cHuzwJ6YL._AC_SX385_", price: "R250", description: "Inside is a game designed in dark hues. Pitch black and moody gray dominate the environment with only a few pops of color here and there to give things more depth. The followup to Limbo, Inside is another 2D platforming puzzle game, and now you can get them both in one package. In the early parts of the game, you'll break into a military complex, and things only get weirder the further into the campaign you go."),
            
            RolePlayPlaystation(name: "Brothers growing closer",Image: "Screenshot 2022-08-25 at 16.43.40", price: "R600", description: "Live the adventure as you follow Brothers on their journey - Solve puzzles, explore the varied locations, and fight boss battles. Experience co-op play in single player mode - Control both brothers at once, one with each thumbstick. Includes special content - Concept Art, Director's Commentary, and Soundtrack. Winner of multiple Game of the Year awards - Including DICE Award 2014 for Downloadable Game of the Year, and BAFTA Award for Game Innovation 2014.."),
            
            RolePlayPlaystation(name: "Q.U.B.E. 2",Image: "apps.23587.66026872382583995.4c335f78-9221-4442-8620-f6ef132f3040", price: "R200", description: "Q.U.B.E. 2 is the sequel to the hit first-person puzzle game Q.U.B.E. You are Amelia Cross, a stranded archaeologist who has mysteriously awoken among the sand swept ruins of an ancient alien landscape. Together with the distant help of another survivor, Commander Emma Sutcliffe, you must traverse and manipulate the structure of this forgotten world to find a way back home."),
            
            RolePlayPlaystation(name: "The Talos Principle",Image: "apps.19397.65643310160401397.0e58aede-f87b-4edf-b9e1-7e4436819c2c", price: "R350", description: "The Talos Principle is a philosophical first-person puzzle game from Croteam, the creators of the Serious Sam series, and written by Tom Jubert (FTL, The Swapper) and Jonas Kyratzes (Infinite Ocean). Assume the role of a sentient artificial intelligence placed within a simulation of humanity’s greatest ruins and linked together through an arcane cathedral. Players are tasked with solving a series of increasingly complex puzzles woven into a metaphysical parable about intelligence and meaning in an inevitably doomed world."),
            
            RolePlayPlaystation(name: "Far Changing Tides",Image: "apps.9089.13955748726326945.7931fe0b-e479-493c-a5eb-ac7155d10f18", price: "R360", description: "An atmospheric vehicle adventure that follows the emotional journey of a boy and his ship as he embarks on a voyage to find a new home. Sail stormy waters, dive unknown depths, and explore forgotten ruins in a beautifully realised, flooded world."),
            
            RolePlayPlaystation(name: "Pneuma: Breath of Life",Image: "apps.33071.64243133811715296.059355e3-b441-4903-b3af-566191fe2c8b", price: "R200", description: "Pneuma: Breath of Life is an enthralling first person puzzler putting gamers’ minds to the test in a visually stunning world using Unreal Engine 4 and Physically Based Rendering. Pneuma provides players with a sense of awe and a relentless determination to solve every puzzle and progress through a narrated story of self-discovery, exploring the fundamental nature of being. This is the first person puzzler of 2015 which is designed to force players think outside the box and explore beyond what they know as reality. Play as a god, ‘Pneuma’, and listen to his comical self-obsessed inner monologue whilst he takes you on a journey exploring and traversing his puzzling world. Rack your brain and progress through a series of environmental challenges that require perception, observation, and lateral thinking skills to succeed. Lift bridges, rotate platforms and move entire buildings all with the power of your mind. This game isn't about your skill with a controller, it's about how you perceive and analyse situations. Push your brain to its limits in this exciting new first person puzzler as Pneuma contemplates the nature of reality and you explore the ontological mystery of the Breath of Life."),
            
            RolePlayPlaystation(name: "The Turing Test",Image: "apps.8731.69523489975139756.2bc423ff-73f1-402d-b7b9-7c75b62dd719", price: "R200", description: "The Turing Test is a first person puzzler that explores the phenomena of consciousness and challenges the meaning of human intuition. Take control of Ava Turing, an engineer for the International Space Agency (ISA), and progress through a narrated story of introspection and morality whilst uncovering the hidden mysteries of Europa. Delve into The Turing Test’s human interaction puzzles and arm yourself with logical and methodical thinking. Take on tests designed in such a way that only a human could solve them. In an evolving story based on mankind’s inherent need to explore, protect and survive; players search deeper into Europa’s ice crusted core and transcend the line between man and machine."),
            
            RolePlayPlaystation(name: "Afterparty",Image: "apps.48559.14175534148140289.70be3761-a4cd-4671-9bfd-01e5925c40c6", price: "R340", description: "In Afterparty, you are Milo and Lola, recently deceased best buds who suddenly find themselves staring down an eternity in Hell. But there’s a loophole: outdrink Satan and he’ll grant you re-entry to Earth."),
            
            RolePlayPlaystation(name: "A Way Out",Image: "apps.57565.71718434425658872.697ca9fd-3b48-4708-b6bf-b97acc67c244", price: "R450", description: "From the creators of Brothers – A Tale of Two Sons comes A Way Out, an exclusively co-op adventure where you play the role of one of two prisoners making their daring escape from prison. What begins as a thrilling breakout quickly turns into an unpredictable, emotional adventure unlike anything seen or played before. A Way Out is an experience that must be played with two players. Each player controls one of the main characters, Leo and Vincent, in a reluctant alliance to break out of prison and gain their freedom. Play the entire experience with your friends for free using the friends pass free trial feature. When you purchase the full game, you can invite any of your friends online regardless of whether or not they’ve purchased the game. From the in-game menu, send them an invite, they’ll unlock the Free Trial, and then you’re ready to play the entire experience together.")

            ]
        RolePlayingPlaystationData.append(contentsOf: RolePlayPlaystation)
//        RolePlayingXboxData.append(contentsOf: RolePlayXbox)
//        ShooterXboxData.append(contentsOf: ShooterXbox)
    }
    
}

