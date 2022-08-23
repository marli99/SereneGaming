//
//  SereneGamingApp.swift
//  SereneGaming
//
//  Created by Marli Correia on 2022/08/02.
//

import SwiftUI

@main
struct SereneGamingApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                ContentView()
//                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }else{
                OnboardingView()
//                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
