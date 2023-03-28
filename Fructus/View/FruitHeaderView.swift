//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 27/03/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTY

    var fruit: Fruit

    @State private var isAnimatingImage: Bool = false

    // MARK: - BODY

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.5)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
