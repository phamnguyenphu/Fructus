//
//  ContentView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 26/03/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var isShowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
