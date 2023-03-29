//
//  SettingsApplicationRowView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 28/03/2023.
//

import SwiftUI

struct SettingsApplicationRowView: View {
    // MARK: - PROPERTY

    var titleRow: String
    var contentRow: String?
    var linkLabel: String?
    var linkDestination: String?

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack {
                Text(titleRow)
                    .foregroundColor(.gray)
                Spacer()
                if contentRow != nil {
                    Text(contentRow!)
                        .fontWeight(.bold)
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                            .fontWeight(.bold)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                }
                else {
                    EmptyView()
                }
            }
            Divider()
                .padding(.vertical, 4)
        }
    }
}

// MARK: - PREVIEW

struct SettingsApplicationRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsApplicationRowView(titleRow: "Developer", contentRow: "Mason Pham")
                .previewLayout(.sizeThatFits)
            SettingsApplicationRowView(titleRow: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .previewLayout(.sizeThatFits)
        }
    }
}
