//
//  PlaystationViewModel.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/03.
//

import SwiftUI

class PlaystationViewModel: ObservableObject{
    
    @Published var PlaystationData : [Playstation] = []
    
    init(){
        getPlaystations()
    }
    
    func getPlaystations(){
        
        let playstations: [Playstation] = [
            
            Playstation(name: "First Generation: Playstation",date: "1994", Image: "playstationone", price: "R500", description: "CPU: RISC MIPS R3000A (32-bit) – 33 MHz, GPU: R800A (32-bit) – 33 MHz, Memory: 2 MB EDO DRAM, Storage: Memory Cards of 1 MB, Optical Drive: CD-ROM, Video Output: S-Video, SCART (RGB), Resolution: 256×224, 640×480 (SD), Audio: 16-bit, 24 Channel ADPCM, Stereo. Sony entered the market of consoles back in 1994 with the release of the PlayStation. The product was announced under the name “Play Station” in May 1991 at the Consumer Electronics Show (CES) in a corporation with Nintendo. After that partnership fell apart, Sony went on to release a console of its own. PlayStation launched in Japan after the release of its rival Sega Saturn and the sales began with a stunning success with long lines in stores, selling 100,000 units on the first day, and then two million units after six months on the market. Sony’s approach to third-party developers was a big part of the PlayStation’s success. By the end of 1996, almost 400 games were being developed for the PlayStation, while 200 and 60 games were for the Saturn and the Nintendo 64. A wild variety of games were offered for the original PlayStation over its 11-year run and some of the best-selling games on PlayStation are Gran Turismo, Final Fantasy VII, Crash Bandicoot, and Tekken 3."),
            Playstation(name: "Playstation One",date: "2000", Image: "psOne", price: "R500", description: "Six years later, a redesigned, slim version was released under the name PS One, having the same hardware specifications. They replaced the original grey color with white and named it appropriately to avoid confusion with its successor, PlayStation 2. It was the highest-selling console through the end of the year, outselling all other consoles, including Sony’s own PlayStation 2. The PS One is fully compatible with all PlayStation software, but compatibility with peripherals may vary. The PS One model also had additional changes, including the removal of the parallel and serial ports from the rear of the console, and the removal of the reset button. Sony also released a version with a 5″ LCD screen compatible with the console, calling it a Combo pack. The last PS One consoles were sold at the end of 2006 shortly after it was officially discontinued, for a total of 102 million units shipped since its launch eleven years earlier and less than a year before the debut of the PlayStation 3."),
            Playstation(name: "Playstation 2",date: "2000", Image: "psTwo", price: "R600", description: "Release Date: March 4, 2000,Abbreviation: PS2, Generation: Sixth, Status: January 4, 2013, Release Price: $299, Units Sold: 155 million (as of March 31, 2012), Best-selling Game: Grand Theft Auto: San Andreas, 17.33 million, Soon after the first sixth-generation console was released, Sega’s Dreamcast, Sony unveiled the PlayStation 2 at the Tokyo Game Show on September 20, 1999, and released in July 2011. Sales of the console, games, and accessories pulled in $250 million on the first day, beating the $97 million made on the first day of the Dreamcast. The hardware uses the Emotion Engine CPU, a custom-designed processor based on the MIPS architecture with a floating-point performance of 6.2 GFLOPS, and the custom-designed Graphics Synthesizer GPU, with a fillrate of 2.4 gigapixels/second, capable of rendering up to 75 million polygons per second. Software for the PlayStation 2 was distributed primarily on DVD-ROM, with some titles being published on CD-ROM. Also, the console can play audio CDs and DVD movies and is backwards compatible with almost all original PlayStation games. The PlayStation 2 also supports PlayStation memory cards and controllers, although original PlayStation memory cards will only work with original PlayStation games and the controllers may not support all functions, such as analogue buttons, for PlayStation 2 games."),

            Playstation(name: "Playstation 2 Slim",date: "2004", Image: "psSlin", price: "R700", description: "In September 2004, Sony unveiled its third major hardware revision. In late October 2004, a smaller, thinner, and quieter slim version of the PlayStation 2 was released, including a built-in Ethernet port. Due to its thinner, the slim version does not support the internal hard disk drive. It also lacks an internal power supply and has a modified Multitap expansion. At the beginning of 2005, it was found that some black slimline console power transformers manufactured between August and December 2004 were defective and could overheat. The units were recalled by Sony and replaced by a 2005 model. In July 2007, Sony started shipping a revision of the slimline PlayStation 2 featuring a reduced weight of 600 grams compared to 900 grams of the previous slim version, achieved through a reduction in parts. The unit also uses a smaller motherboard as well as a custom ASIC which houses the Emotion Engine, Graphics Synthesizer, and the RDRAM. The AC adaptor’s weight was also reduced to 250 grams from the 350 grams in the previous revision."),
            Playstation(name: "Playstation Portanble",date: "2004", Image: "psPortable", price: "R2000", description: "The PlayStation Portable (abbreviated to PSP) was Sony’s foray into the handheld business. Originally released in Japan back on December 12, 2004, the PSP was Sony’s first handheld system. At the time of its release, Nintendo was already dominating the market with their Game Boy Advance and the Nintendo DS. However, the coming of the PSP was Sony’s answer to Nintendo, as not only did it compete against the latter but also against other competitors such as N-Gage and Gizmondo. Thanks to the massive support from third-party developers, the PSP boasts a fantastic library of video games to dig into. Similar to the PS2, the games’ library is diverse, brimming with a variety of fantastic genres such as JRPG, Hack and Slash, Beat’em Up, and especially Racing."),
            Playstation(name: "Playstation 3",date: "2006", Image: "ps3", price: "2000", description: "TThe console was first officially announced at E3 2005 and was released at the end of 2006. It was the first console to use Blu-ray Disc as its primary storage medium. The console was the first PlayStation to integrate social gaming services, including the PlayStation Network, as well as the first to be controllable from a handheld console, through its remote connectivity with PlayStation Portable and PlayStation Vita. The PlayStation 3 development began in 2001 when Sony announced a collaboration with Toshiba and IBM to the Cell microprocessor. Sony officially unveiled the PlayStation 3 console to the public on May 16, 2005, at E3 2005. PlayStation 3 launched with 14 titles. After the first week of sales, it was confirmed that Resistance: Fall of Man from Insomniac Games was the top-selling launch game in North America. As of March 31, 2012, there have been 595 million games sold for PlayStation 3. The best selling games are Grand Theft Auto V, The Last of Us, Gran Turismo 5, Uncharted 2: Among Thieves and Uncharted 3: Drake’s Deception. During its early years, the system was receiving negative reviews, due to its high price, $599 for a 60-gigabyte model and $499 for a 20 GB model. A big problem was also the complex processor architecture, and the lack of quality games, but that was praised for its Blu-ray capabilities and “untapped potential”. The system had a slow start in the market but managed to recover, particularly after the introduction of the Slim model."),
            Playstation(name: "Playstation 3 Slim", date: "2009", Image: "ps3Slin", price: "R2200", description: "The slim version of PlayStation 3 no longer provided the hardware ability to run PlayStation 2 games. It was lighter and thinner than the original console and featured a redesigned logo and marketing design. The slimmer version of the PlayStation 3 features an upgradeable 120 GB, 160 GB, 250 GB or 320 GB hard drive and is 32% smaller, 36% lighter and consumes 34% less power than the previous model.  The Cell microprocessor has moved to a 45 nm manufacturing process, which makes it cooler and quieter than any previous model, redesigning the cooling system too. The RSX moved to a 40 nm process in the latest revision. The PlayStation 3 Slim no longer had the ‘main power’ button like the original console, similar to the PlayStation 2 Slim version. After the backward compatibility was not featured on the Slim version, Sony announced a new series of PlayStation 2 remasters, called Classics HD, including PS2 and PSP titles remastered in HD."),
            Playstation(name: "Playstation Vita", date: "2011", Image: "psVita", price: "R1200", description: "The PS Vita is the successor to Sony’s critically acclaimed PSP with massive improvements over its predecessor. Perhaps the striking improvement at first glance is the addition of dual analogue sticks instead of the PSP’s solo-analogue stick. In addition to other improvements is the introduction of a 5-inch multi-touch capacitive touchpad. While the PS Vita looked beautiful thanks to its eye-catching design, and how it felt comfortable to hold in one’s hands, the console was a flop on the commercial side outside of Japan. Perhaps one of the factors that contributed to the downfall of the PS Vita was underestimating the impact of mobile gaming at the time of the system’s release. The lack of support from renowned developers such as Capcom and Activision may have had an impact too. However, on the one hand, the Vita was home to a diverse line of indie games such as Velocity 2X, Axiom Verge, and more games which you can check up from the website."),
            Playstation(name: "Playstation 3 super Slim", date: "2012", Image: "superSlim", price: "R2300", description: "The Super Slim version of PlayStation 3 was released in late 2012, refined and redesigned. The console came out on the market with the availability of either a 250 GB or 500 GB hard drive. One of the obvious changes was the sliding disc cover, instead of the traditional slot-loading drive.  In look, shape, and design, the Super Slim version resembles something of a hybrid between the Slim and the original PlayStation 3. The console is much smaller, measuring 11.4 inches wide by 2.36 inches tall by 9.05 inches deep, 20% smaller and 25% lighter than the previous Slim console. Beyond its smaller size and storage capacities, the Super Slim model doesn’t feature anything else. A vertical stand was also available for these models and launched on the same day as the consoles in their respective regions."),
            Playstation(name: "Playstation 4", date: "2013", Image: "ps4", price: "R13000", description: "TThe PlayStation 4 is the eighth-generation console developed by Sony Interactive Entertainment. Announced in February 2013 the critics were praising Sony for acknowledging its consumers’ needs, embracing independent game development, and not imposing the restrictive digital rights management schemes like those originally announced by Microsoft for the Xbox One. The console features an AMD Accelerated Processing Unit built upon the x86-64 architecture, which can peak at 1.84 teraflops. AMD stated that it was the most powerful APU it had developed to date. Its optical drive is capable of reading Blu-ray Discs at speeds of up to three times that of its predecessor. The original PS4 console can output in 4K and play multimedia in the format but does not play games in 4K resolution. The console includes a 500 GB hard drive for additional storage, which can be upgraded by the user. The console’s controller was also redesigned and improved over the PlayStation 3, with improved buttons and analog sticks, and an integrated touchpad among other changes. The console also supports High-dynamic-range video and playback of 4K resolution multimedia. The shape of the triggers and shoulder buttons were refined, the D-pad buttons were given a steeper downward angle to provide a resting space in the center for the user’s thumb, and the handgrips were made thicker and given micro texturing to improve their feel. Sadly, the PlayStation 4 is not compatible with any game of the older PlayStation consoles. PlayStation 4 games are distributed at retail on Blu-ray Disc, and digitally as downloads through the PlayStation Store. PS4 allows users to access a variety of free and premium PlayStation Network services, to play online on multiplayer games, including the PlayStation Store access, giving its player up to three games per month for a limited time to play. By the end of September 2019, over 102 million PlayStation 4 consoles had been shipped worldwide, surpassing lifetime sales of the PlayStation 3."),
            Playstation(name: "Playstation 4 Slim", date: "2016", Image: "ps4Sim", price: "R4000", description: "The Playstation 4 Slim is the smaller version of the original console, which features an upgraded GPU and a higher CPU clock rate to support enhanced performance and 4K resolution in supported games. The addition of 5GHz WiFi was added, and a UHD Blu-ray drive. Like the original PlayStation 3 and the PS3 Slim model, the PS4 Slim retains the overall shape of the PS4, with a glossy black synthetic and a textured matte finish. This makes it much less prone to collecting dust, fingerprints, and scratches. The sharp corners have changed into softer and rounded. The power and eject buttons have been replaced with physical buttons. The power button is larger, while the eject button is in the shape of a circle. The power button also acts as a replacement for the color-changing LED strip that adorned the top of the original PlayStation 4."),
            Playstation(name: "Playstation 4 Pro", date: "2016", Image: "ps4Pro", price: "R5000", description: "Three years have passed since the PlayStation 4 Pro launched, and it is still considered to be one of the best consoles out there, especially for its 4K capabilities and premium quality. The Pro design is a complete copy of the original PS4 console, there are a lot of similarities such as the flat parallelogram. Although, the Pro version is a little wider and a little taller than the original, and a bit heavier, too. DualShock 4 was changed too, adding a light bar built into the touchpad, with a feature where you can see instantly which player you are by the color, but more importantly, the triggers have been tweaked and it feels lighter in the hand. This new strategy by Sony, releasing a Pro version of its new console led to increasing the total player base and making another great success on sales, by also releasing exclusive games that would take advantage of the console’s capabilities."),
            Playstation(name: "Playstation Classic", date: "2018", Image: "psClassic", price: "R1200", description: "The PlayStation Classic, it’s a deliberate model of the original PlayStation console for the system’s 24th anniversary. It was announced in September 2018, with a full list of games and released a month later in December. The PlayStation Classic ships with two PlayStation controllers, the original model without the analog sticks, an HDMI cable, and a USB Micro-A to standard USB-A cable. An AC adapter for the console is sold separately. The console weighs about 170 grams, approximately 80% smaller in volume than the original PlayStation and 45% smaller in width and length. It includes ports for both controllers, HDMI output, and power via USB. Internally, the console uses a MediaTek MT8167a Quad A35 system on a chip with four central processing cores clocked at @ 1.5 GHz and a Power VR GE8300 graphics processing unit. It includes 16 GB of eMMC flash storage and 1 GB of DDR3 memory. The PlayStation Classic comes preloaded with 20 games, running off the open-source emulator, PCSX ReARMed. Five games were revealed when the console was announced, and the full roster was revealed a month later, such as Tekken 3, Final Fantasy VII, Metal Gear Solid, and Grand Theft Auto. The PlayStation Classic does not feature the PlayStation Network and doesn’t support an adapter. Each game can be suspended in a save state by pressing the console’s reset button." ),
            Playstation(name: "Playstaton 5", date: "2020", Image: "ps5", price: "R15000", description: "Last April, Sony unveiled the next-generation console, without any specific details. In August, Jim Ryan, President & CEO, announced that the next console will be called PlayStation 5, sharing also some exciting details about the new controller. It features Haptic feedback that simulates touch, meaning the controller will output vibrations or movements to replicate a real-life touch experience. You will be able to even get a sense of a variety of textures when running through fields of grass or plodding through mud. This aims to improve the controller’s feedback and the player’s immersion. The new console is expected to be released on the Holidays of 2020 (October – December), and the first official trailer for PS5 was released in June 11, 2020.")

        ]
    PlaystationData.append(contentsOf: playstations)
}
    
    
}
