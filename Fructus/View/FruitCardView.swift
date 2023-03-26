//
//  FruitCardView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 23/03/2023.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    // MARK: - FUNCTIOM
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: .init(colors: [fruit.gradientColors[0], fruit.gradientColors[1]]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 8, x: 6, y: 8)
                
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .frame(maxWidth: 480)
                
                // FRUIT: BUTTON
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .cornerRadius(20)
        .padding(.horizontal, 20)
        //        .onAppear {
        //            withAnimation(.easeOut(duration: 0.5)) {
        //                isAnimating = true
        //            }
        //        }
    }
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
