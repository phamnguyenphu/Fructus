//
//  ApplicationData.swift
//  Fructus
//
//  Created by Pham Nguyen Phu on 28/03/2023.
//

import SwiftUI

// MARK: - APPLICATION DATA

let applicationData: Application = .init(developer: ["Developer", "Mason Pham"], designer: ["Designer", "Udemy Course"], compatibility: ["Compatibility", "IOS 16"], website: ["Website", "SwiftUI Masterclass"], facebook: ["Facebook", "Pham Nguyen Phu"], github: ["Github", "phamnguyenphu"], swiftui: ["SwiftUI Version", "5.0"], verson: ["Version", "1.0.0"])

enum LinkDestination: String {
    case website = "www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/"
    case facebook = "www.facebook.com/NPPRO224"
    case github = "github.com/phamnguyenphu"
}
