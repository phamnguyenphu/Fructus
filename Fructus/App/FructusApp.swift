//
//  FructusApp.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 23/03/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
