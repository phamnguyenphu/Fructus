//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 27/03/2023.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTY

    var fruitName: String

    // MARK: - BODY

    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com/wiki/\(fruitName)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
        .padding(.top, 10)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruitName: fruitsData[0].title)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
