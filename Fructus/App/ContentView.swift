//
//  ContentView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 26/03/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY

    var fruit: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        NavigationStack {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
