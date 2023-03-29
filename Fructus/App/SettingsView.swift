//
//  SettingsView.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 28/03/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY

    @Environment(\.dismiss) var dismiss

    let application: Application = applicationData

    // MARK: - BODY

    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1

                    GroupBox {
                        HStack(alignment: .center, spacing: 15) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and colories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(nameLabel: "Fructus", imageName: "info.circle")
                    }

                    // MARK: - SECTION 2

                    GroupBox {
                        Text("hi")
                    } label: {
                        SettingsLabelView(nameLabel: "Customization", imageName: "info.circle")
                    }

                    // MARK: - SECTION 3

                    GroupBox {
                        SettingsApplicationRowView(titleRow: application.developer[0], contentRow: application.developer[1])
                        SettingsApplicationRowView(titleRow: application.designer[0], contentRow: application.designer[1])
                        SettingsApplicationRowView(titleRow: application.compatibility[0], contentRow: application.compatibility[1])
                        SettingsApplicationRowView(titleRow: application.website[0], linkLabel: application.website[1], linkDestination: LinkDestination.website.rawValue)
                        SettingsApplicationRowView(titleRow: application.facebook[0], linkLabel: application.facebook[1], linkDestination: LinkDestination.facebook.rawValue)
                        SettingsApplicationRowView(titleRow: application.github[0], linkLabel: application.github[1], linkDestination: LinkDestination.github.rawValue)
                        SettingsApplicationRowView(titleRow: application.swiftui[0], contentRow: application.swiftui[1])
                        SettingsApplicationRowView(titleRow: application.verson[0], contentRow: application.verson[1])

                    } label: {
                        SettingsLabelView(nameLabel: "Application", imageName: "apps.iphone")
                    }
                } //: VSTACK
                .padding()
            } //: SCROLLVIEW
            .navigationTitle("Settings")
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        } //: NAVIGATIONSTACK
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
