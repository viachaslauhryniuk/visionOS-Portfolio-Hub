//
//  CalcApp.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 10/04/2025.
//
import SwiftUI

@main
struct PortfolioApp: App {

    var body: some Scene {
        WindowGroup(id: WindowID.hub) {
            HubView()
        }
        .windowStyle(.plain)
        
        WindowGroup(id: WindowID.aboutCV) {
            AboutCV()
        }
        .windowStyle(.plain)
        .defaultSize(width: 600, height: 700)

        WindowGroup(id: WindowID.contact) {
            ContactView()
        }
        .windowStyle(.plain)
        .defaultSize(width: 650, height: 350)
    }
}
