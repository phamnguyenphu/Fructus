//
//  OnboardingView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 24/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY

    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(0 ..< 5) { _ in
                FruitCardView()
            } //: FOR EACH LOOP
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
