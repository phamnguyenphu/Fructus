//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 27/03/2023.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTY
    
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView(fruitName: fruit.title)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
