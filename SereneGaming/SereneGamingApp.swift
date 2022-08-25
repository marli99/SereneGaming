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
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
