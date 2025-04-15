//
//  PortfolioItem.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 11/04/2025.
//

import Foundation

struct PortfolioItem: Identifiable, Hashable {
    let id = UUID()
    let logoName: String
    let title: String    
    let description: String
}
