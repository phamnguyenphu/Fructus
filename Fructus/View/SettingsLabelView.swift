//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 28/03/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTY

    var nameLabel: String
    var imageName: String

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack {
                Text(nameLabel.uppercased())
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: imageName)
            }
            Divider()
                .padding(.vertical, 4)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(nameLabel: "Fructus", imageName: "info.circle")
    }
}
