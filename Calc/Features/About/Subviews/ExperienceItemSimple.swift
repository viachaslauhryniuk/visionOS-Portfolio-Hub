//
//  ExperienceItemSimple.swift
//  Calc
//
//  Created by Viachaslau Hryniuk on 16/04/2025.
//

import SwiftUI

struct ExperienceItemSimple: View {
    let role: String
    let company: String
    let period: String

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(role)
                .font(.headline)
            HStack {
                Text(company)
                Spacer()
                Text(period)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
    }
}

