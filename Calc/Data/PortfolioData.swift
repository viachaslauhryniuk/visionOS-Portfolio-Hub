//
//  PortfolioData.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import Foundation

struct PortfolioData {
    static let items: [PortfolioItem] = [
        PortfolioItem(logoName: "LogoT", title: "NDA Bank", description: "Contributed to a large-scale mobile banking app, developing core features like transfers, payments, and card management using Swift, SwiftUI, and UIKit. Worked within a 15-person Agile team, focusing on feature development, debugging, and third-party integrations"),
        PortfolioItem(logoName: "LogoPL", title: "Czas Wolny Student Organizer", description: "Developed 'Czas Wolny,' an iOS app designed to help university students manage academic schedules, track deadlines, and communicate via chat. Implemented features using Swift & SwiftUI with an MVVM architecture, integrating Firebase for backend services (Auth, Firestore, Storage)."),
        PortfolioItem(logoName: "LogoDD", title: "Daily Dose of Positivity", description: "Developed an iOS app designed to foster a positive mindset and cultivate a supportive community centered around the notion of spreading joy and kindness.")
    ]
}
