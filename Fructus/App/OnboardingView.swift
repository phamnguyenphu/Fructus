//
//  OnboardingView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 24/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY

    var fruits: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(fruits[0 ... 5]) { item in
                FruitCardView(fruit: item)
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
