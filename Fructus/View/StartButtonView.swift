//
//  StartButtonView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 23/03/2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTY

    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        // MARK: - BODY

        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background {
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            }
            .foregroundColor(.white)
        } //: BUTTON
        // .preferredColorScheme(.dark)
    }
}

// MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
