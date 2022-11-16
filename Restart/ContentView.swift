//
//  ContentView.swift
//  Restart
//
//  Created by Valery Keplin on 16.11.22.
//

import SwiftUI

// MARK: - BODY

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
